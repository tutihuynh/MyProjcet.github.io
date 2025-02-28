 <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>{{trans('message.about WAEshop')}}</h4>
                            <p>{{trans('message.Lorem')}}
                                </p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>{{trans('message.Information')}}</h4>
                            <ul>
                                <li><a href="#">{{trans('message.intro')}}</a></li>
                                <li><a href="#">{{trans('message.Customer Service')}}</a></li>
                                <li><a href="#">{{trans('message.Our Sitemap')}}</a></li>
                                <li><a href="#">{{trans('message.Terms Conditions')}}</a></li>
                                <li><a href="#">{{trans('message.Privacy Policy')}}</a></li>
                                <li><a href="#">{{trans('message.Delivery Information')}}</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>{{trans('message.Contact Us')}}</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>{{trans('message.Address')}}: Số 1A Tan Thai 3 <br>Man Thai District<br> Son Tra Ward</p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>{{trans('message.Phone')}}: <a href="">+(84) 0355032314</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>{{trans('message.Email')}}: <a href="mailto:contactinfo@gmail.com">tamhcgcd17190@fpt.edu.vn</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company">{{trans('message.All Rights Reserved')}}<a href="#"> Huynh Cong Tam </a>{{trans('message.Design By')}} 
            <a href="http://localhost/New%20folder/finalLaravel_v2/weaShopOnline/public/home"> {{trans('message.Company')}} </a></p>
    </div>
    <!-- End copyright  -->
@include('client.shared.chatbot')
    