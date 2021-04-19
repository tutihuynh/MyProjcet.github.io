<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Repositories\Brand\BrandInterface;
use App\Repositories\Category\CategoryInterface;
use App\Repositories\Product\ProductInterface;
use App\Repositories\Slide\SlideInterface;
use Illuminate\Http\Request;
use Mail;
use Session;
use Auth;
use Validator;
use DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class HomeController extends Controller
{
    private $productRepository;
    private $brandRepository;
    private $slideRepository;
    private $categoryRepository;

    public function __construct(ProductInterface $productRepos, BrandInterface $brandRepos,
        SlideInterface $slideRepos, CategoryInterface $categoryRepos)
    {
        $this->productRepository = $productRepos;
        $this->brandRepository = $brandRepos;
        $this->slideRepository = $slideRepos;
        $this->categoryRepository = $categoryRepos;
    }

	public function index()
    {
        $slides = $this->slideRepository->getTopSlide(3);
        $topHots = $this->productRepository->getTopHotProduct(4);
        $topNews = $this->productRepository->getTopNewProduct(4);
        $topSales = $this->productRepository->getTopSaleProduct(4);
        $brands = $this->brandRepository->getTopBrand(10);
        $categories = $this->categoryRepository->getCategory();
        return view('client.layouts.home', compact('slides', 'topHots', 'topNews', 'topSales', 'brands', 'categories'));
    }
    public function about()
    {
        return view('client.layouts.about_us');
    }
    // send gmail
    public function contact()
    {
        return view('client.layouts.contact_us');
    }
    public function sendContact(Request $request)
    {
        // dd($request);
        $input = $request->all();
        Mail::send('client.layouts.mail', array('name'=>$input["name"],'email'=>$input["email"], 'subject'=>$input['subject'], 'mess'=>$input['mess']), function($message){
            $message->to('winwin260299@gmail.com')->subject('Visitor Feedback!');
        });
        Session::flash('flash_message', 'Send message successfully!');
        return back();
    }
    // end
    public function login()
    {
        return view('client.layouts.login');
    }
    public function register()
    {
        return view('client.layouts.register');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
//view profile
    public function profile($id)
    {
        $customer = Auth::user();

        $data = [
            'customer' => $customer,
        ];

        return view('client.layouts.profile', $data);
    } 
// view edit profile
    public function editProfile($id)
    {
        $customer = Auth::user();

        $data = [
            'customer' => $customer,
        ];

        return view('client.layouts.edit-profile', $data);
    }
// update profile
    public function updateProfile(Request $request, $id)
    {
        $rules = [
            'full_name' => 'required|string|max:255',
            'address' => 'required|max:255',
            'phone_no' => 'required|size:10',
            'email' => 'required|string|email|max:255',
        ];

        if ($request->current_password && $request->new_password) {
            $rules = [
                'full_name' => 'required|string|max:255',
                'address' => 'required|max:255',
                'phone_no' => 'required|size:10',
                'email' => 'required|string|email|max:255',
                'current_password' => 'string|min:8',
                'new_password' => 'string|min:8',
            ];
        }

        $validator = Validator::make($request->all(), $rules);
        if($validator->fails())
        {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        DB::beginTransaction();
        try {
            $customer = Auth::user();

            if ($request->current_password && $request->new_password) {
                if (Hash::check($request->current_password, $customer->password)) {
                    $customer->update([
                        'password' => Hash::make($request->new_password),
                    ]);
                }
                else {
                    return redirect()->back()->with('notificationFail', 'The current password is not correct!');
                }
            }

            $check_has_email = User::whereNotIn('id', [$id])->where('email', $request->email)->first();
            if (!$check_has_email) {
                $customer->update([
                    'email' => $request->email,
                ]);

                $customer->customer->update([
                    'email' => $request->email,
                    'full_name' => $request->full_name,
                    'address' => $request->address,
                    'phone_no' => $request->phone_no,
                ]);
            }
            else {
                return redirect()->back()->with('notificationFail', 'Email already exists!');
            }

            DB::commit();
            return redirect()->route('profile', $id)->with('notificationSuccess', 'Successfully updated!');
        } catch (Exception $e) {
            DB::rollBack();
            throw new Exception($e->getMessage());
            return redirect()->back()->with('notificationFail', 'Update information failed!');
        }
    }
// view list purchase history
    public function purchaseHistory()
    {
        $orders = Auth::user()->customer->orders()->paginate(10);

        $data = [
            'orders' => $orders,
        ];

        return view('client.layouts.purchase-history', $data);
    }
}
