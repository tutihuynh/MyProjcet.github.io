<ul class="sidebar" >
	<!-- Dash board -->
	<div class="dash_board">
		<div class="dash_board_ava">
			<img src="{{ asset('images/sunflower.png') }}" alt="#">
		</div>
		<a class="dash_board_link" href="{{ url('admin/dashboard') }}"> Home </a>
	</div>
	<!-- Manage list -->
	<li class="list_item">
		<a class="item_link" href="{{ route('brand.index') }}">Brand</a>
	</li>
	<li class="list_item">
		<a class="item_link" href="{{ route('category.index') }}">Category</a>
	</li>
	<li class="list_item">
		<a class="item_link" href="{{ route('product.index') }}">Products</a>
	</li>
    <li class="list_item">
        <a class="item_link" href="{{ route('order.index') }}">Order</a>
    </li>
    <li class="list_item">
        <a class="item_link" href="{{ route('customer.index') }}">Customer</a>
    </li>
	<li class="list_item">
		<a class="item_link" href="{{ route('user.index') }}">User</a>
	</li>
	<li class="list_item">
		<a class="item_link" href="{{ route('role.index') }}">Role</a>
	</li>
    <li class="list_item">
        <a class="item_link" href="{{ route('slide.index') }}">Slider</a>
    </li>
</ul>
