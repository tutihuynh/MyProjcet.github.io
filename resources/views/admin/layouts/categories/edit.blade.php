@extends('admin.shared.main')
@section('title')
    Cập nhật
@endsection
@section('content')
<div class="content_yield">
	{{ Form::open(['route'=>['category.update',$category->id],'method'=>'put','enctype '=>'multipart/form-data','class' => 'col-md-12 row']) }}
	<div class="col-md-12 m-auto">
		<h3 class="mb-5 font-weight-bold">Category</h3>
		<div class="col-lg-10 col-md-12 col-sm-12 row">
			<div class="form-group">
				{{ Form::label('Category Name: ','',['class' => 'font-weight-bold']) }}
				{!! Form::text('name', $category->name, [
					'class' => 'form-control',
					'placeholder'=>"category Name"
				])
				!!}
				<span class="text-danger">{{ $errors->first('name')}}</span>
			</div>
			<div class="form-group">
				{{ Form::label('Description: ','',['class' => 'font-weight-bold']) }}
				{!! Form::text('description', $category->description, [
					'class' => 'form-control',
					'placeholder'=>"description"
				])
				!!}
				<span class="text-danger">{{ $errors->first('description')}}</span>
			</div>
			<div class="form-group text-right">
				<a class="btn btn-info mt-3" href="{{ route('category.index') }}" title="back"><i class="fas fa-arrow-left"> View List</i></a>
				{{ Form::submit('Save',['class' => 'font-weight-bold text-white btn bg-color-green mt-3']) }}
			</div>
		</div>
	</div>
	{{ Form::close() }}
</div>
@endsection
