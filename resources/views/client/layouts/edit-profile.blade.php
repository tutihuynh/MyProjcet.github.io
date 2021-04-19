@extends('client.shared.master')
@section('content')
<body>
    <div class="container mt-5 mb-5">
        <h1 class="font-weight-bold h3">Update customer information<a href="{{ route('profile', $customer->id) }}" class="btn btn-success float-right">Profile</a></h1>
        @if ($errors->any())
            @foreach ($errors->all() as $error)
                <span class="text-danger d-block mt-2">{{ $error }}</span>
            @endforeach
        @endif
        @if(session('notificationSuccess'))
            <div class="alert alert-success text-center mt-3" role="alert">
                <button type="button" class="close d-block" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{ session('notificationSuccess') }}
            </div>
        @endif
        @if(session('notificationFail'))
            <div class="alert alert-danger text-center mt-3" role="alert">
                <button type="button" class="close d-block" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{ session('notificationFail') }}
            </div>
        @endif

        <form action="{{ route('update-profile', $customer->id) }}" method="POST" class="mt-3">
            @csrf
            <div class="form-group row">
                <label for="nameCustomer" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                    <input id="nameCustomer" class="form-control" type="text" name="full_name" required value="{{ $customer->customer->full_name }}">
                </div>
            </div>
            <div class="form-group row">
                <label for="addressCustomer" class="col-sm-2 col-form-label">Address</label>
                <div class="col-sm-10">
                    <input id="addressCustomer" class="form-control" type="text" name="address" required value="{{ $customer->customer->address }}">
                </div>
            </div>
            <div class="form-group row">
                <label for="phoneCustomer" class="col-sm-2 col-form-label">Phone</label>
                <div class="col-sm-10">
                    <input id="phoneCustomer" class="form-control" type="text" name="phone_no" required value="{{ $customer->customer->phone_no }}">
                </div>
            </div>
            <div class="form-group row">
                <label for="emailCustomer" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input id="emailCustomer" class="form-control" type="email" name="email" required value="{{ $customer->email }}">
                </div>
            </div>
            <div class="form-group row">
                <label for="passwordOld" class="col-sm-2 col-form-label">Current password</label>
                <div class="col-sm-10">
                    <input id="passwordOld" class="form-control" type="password" name="current_password" placeholder="Current password">
                </div>
            </div>
            <div class="form-group row">
                <label for="newPassword" class="col-sm-2 col-form-label">New Password</label>
                <div class="col-sm-10">
                    <input id="newPassword" class="form-control" type="password" name="new_password" placeholder="New Password">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-2">
                    <button class="btn btn-success" type="submit">Update</button>
                </div>
            </div>
        </form>
    </div>
</body>
@endsection
