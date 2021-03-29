@extends('admin.shared.main')
@section('title')
    TuTiTaDa shop - Home Page
@endsection
@section('content')
	<div class="content_yield">
		<h2 class="title">Home</h2>
        <div class="row">
            <div class="col-xs-12 col-sm-4">
                <div class="total product_total">
                    <div class="icon">
                        <i class="fa fa-list"></i>
                    </div>
                    <div class="info">
                        <h6>GENERAL PRODUCT TYPE</h6>
                        <h3>{{$total_product}}</h3>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4">
                <div class="total customer_total">
                    <div class="icon">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="info">
                        <h6>Customers have registered</h6>
                        <h3>{{$total_customer}}</h3>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4">
                <div class="total revenue_total">
                    <div class="icon">
                        <i class="fa fa-cart-plus"></i>
                    </div>
                    <div class="info">
                        <h6>Order</h6>
                        <h3>{{$total_order}}</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-4">
                <div class="total revenue_total">
                    <div class="icon">
                        <i class="fa fa-money" aria-hidden="true"></i>
                    </div>
                    <div class="info">
                        <h6>Sales today</h6>
                        <h3>{{$revenueByDay}}</h3>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4">
                <div class="total customer_total">
                    <div class="icon">
                        <i class="fa fa-money" aria-hidden="true"></i>
                    </div>
                    <div class="info">
                        <h6>Sales this week</h6>
                        <h3>{{$revenueByWeek}}</h3>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4">
                <div class="total product_total">
                    <div class="icon">
                        <i class="fa fa-money" aria-hidden="true"></i>
                    </div>
                    <div class="info">
                        <h6>Sales this month</h6>
                        <h3>{{$revenueByMonth}}</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
