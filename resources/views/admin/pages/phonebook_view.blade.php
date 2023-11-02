{{-- Extends the Master file--}}
@extends('../master')
{{-- Title--}}
@section('title','SMS | Phonebook View')
{{-- heading content --}}
@section('heading','View Phonebook')
{{-- Main content--}}
@section('main_content')
<table id="example2" id="datatable" class="table table-bordered table-hover">
    <thead>
    <tr>
      <th>SL No.</th>
      <th>Name</th>
      <th>Slug</th>
      <th>Created At</th>
      <th>Updated At</th>
      <th>Action</th>
    </tr>
    </thead>
    <tbody>
@foreach($all_data as $data)
    <tr>
      <td>{{$data->id}}</td>
      <td>{{$data->name}}</td>
      <td>{{$data->slug}}</td>
      <td>{{$data->created_at}}</td>
      <td>{{$data->updated_at}}</td>
      <td><a class="btn btn-success" href="view/{{$data->id}}">View</a> | <a href="edit/{{$data->id}}" class="btn btn-primary">Edit</a> | <a class="btn btn-danger" href="delete/{{$data->id}}">Delete</a></td>
    </tr>
@endforeach
     </tbody>
    <tfoot>
    <tr>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
    </tfoot>
  </table>
@endsection