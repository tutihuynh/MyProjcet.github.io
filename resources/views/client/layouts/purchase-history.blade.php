@extends('client.shared.master')
@section('content')
<body>
    <div class="container mt-5 mb-5">
        <table class="table table-bordered table-striped mt-3">
            <tr class="text-center bg-success text-white">
                <th>STT</th>
                <th>Product</th>
                <th>Quantity</th>
                <th>Payment status</th>
                <th>Order status</th>
                <th>Day trading </th>
            </tr>
            @php ($stt = 1)
            @foreach ($orders as $order)
                <tr>
                    <td class="text-center">{{ $stt++ }}</td>
                    <td>
                        <ul>
                            @foreach ($order->order_details as $order_detail)
                                <li>{{ $order_detail->products->name }}</li>
                            @endforeach
                        </ul>
                    </td>
                    <td>
                        <ul>
                            @foreach ($order->order_details as $order_detail)
                                <li>{{ $order_detail->products->quantity }}</li>
                            @endforeach
                        </ul>
                    </td>
                    <td>
                        @if ($order->payment_status == 1)
                            Cash on delivery
                        @elseif ($order->payment_status == 2)
                            Momo Payment
                        @elseif ($order->payment_status == 3)
                            Online payment
                        @endif
                    </td>
                    <td>
                        @if ($order->order_status == 1)
                            Waiting for delivery
                        @elseif ($order->order_status == 0)
                            Delivered
                        @endif
                    </td>
                    <td>{{ date_format($order->created_at, 'd.m.Y') }}</td>
                </tr>
            @endforeach
        </table>
        {{ $orders->links() }}
    </div>
</body>
@endsection
