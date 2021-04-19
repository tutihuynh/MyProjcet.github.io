<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $table = "order_details";
    protected $guarded = ['id'];
    protected $timestrap = true;   
    public function products()
    {
    	return $this->belongsto('App\Models\Product', 'product_id');
    } 
    // 1 order detail - 1 order
    public function order()
	{
    	return $this->belongsTo('App\Models\Order', 'order_id');
	}
}