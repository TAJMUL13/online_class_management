{{-- Extends the Master file--}}
@extends('../master')
{{-- Title--}}
@section('title','SMS | Contacts View')
{{-- heading content --}}
@section('heading','View Contacts')
{{-- Main content--}}
@section('main_content')
<select name="" id="" onchange="location = this.value;">
  @foreach($datas_p as $data)
    <a style="color:#fff;background-color:red;padding:10px;margin-right:10px;" href=""><option value="/contact/category/view/{{$data->id}}">{{$data->name}}</option></a>
  @endforeach
</select>
<h1 class="text-center">{{$phonebook_name ?? 'All Category'}} </h1>
<table id="example2" id="datatable" class="table table-bordered table-hover">
    <thead>
    <tr>
      <th>SL No.</th>
      <th>Name</th>
      <th>Mobile</th>
      <th>Phonebook</th>
      <th>Created At</th>
      <th>Updated At</th>
      <th>Action</th>
    </tr>
    </thead>
    <tbody>
@foreach($all_data as $data)
    <tr>
      <td>{{$no++}}</td>
      <td>{{$data->name}}</td>
      <td>{{$data->mobile}}</td>
      <td>{{$data->phonebook_name}}</td>
      <td>{{$data->created_at}}</td>
      <td>{{$data->updated_at}}</td>
      <td><a class="btn btn-success" href="view/{{$data->id}}">View</a> | <a href="/contact/edit/{{$data->id}}" class="btn btn-primary">Edit</a> | <a class="btn btn-danger" href="/contact/delete/{{$data->id}}">Delete</a></td>
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

