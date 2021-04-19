@extends('client.shared.master')
@section('content')
<body>
    <div class="container mt-5 mb-5">
        @if(session('notificationSuccess'))
            <div class="alert alert-success text-center mt-3" role="alert">
                <button type="button" class="close d-block" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{ session('notificationSuccess') }}
            </div>
        @endif
        
        <h1 class="font-weight-bold h3">Customer information <a href="{{ route('edit-profile', $customer->id) }}" class="btn btn-success float-right">Update profile</a> <a class="btn btn-success float-right mr-2" href="{{ route('purchase-history') }}">Purchase history</a>
        </h1>

        <div class="row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Name:</label>
            <label for="staticEmail" class="col-sm-10 col-form-label">{{ $customer->customer->full_name }}</label>
        </div>
        <div class="row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Address:</label>
            <label for="staticEmail" class="col-sm-10 col-form-label">{{ $customer->customer->address }}</label>
        </div>
        <div class="row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Phone:</label>
            <label for="staticEmail" class="col-sm-10 col-form-label">{{ $customer->customer->phone_no }}</label>
        </div>
        <div class="row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Email:</label>
            <label for="staticEmail" class="col-sm-10 col-form-label">{{ $customer->email }}</label>
        </div>
    </div>
</body>
@endsection
