@extends('admin/master')
@section('title','Class Submit | New Class')
@section('main_content')
<section>
   <div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <h1 class="text-center"> All Class </h1>
<table id="example2" id="datatable" class="table table-bordered table-hover">
    <thead>
    <tr>
      <th>SL No.</th>
      <th>Class</th>
      <th>Subject</th>
      <th>Date</th>
      <th>Published at</th>
      <th>Action</th>
    </tr>
    </thead>
    <tbody>
@foreach($all_classes as $data)
<input type="hidden" name="" value="{{$create_time= $data->created_at}}">
    <tr>
      <td>{{$no++}}</td>
      <td>{{$data->class_name}}</td>
      <td>{{$data->subject_name}}</td>
      <td>{{$data->date}}</td>
      <td><?php echo date("j-F-Y h:i A",strtotime($create_time)) ?></td>
      <td>
        <a class="btn btn-success" href="{{$data->youtube_link}}" target="_blank">View</a> | 
        <a href="/class/edit/{{$data->id}}" class="btn btn-primary">Edit</a> | 
        <a onClick="return confirm('Are you sure?')" class="btn btn-danger" href="/class/delete/{{$data->id}}">Delete</a></td>
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
    </div>
  </div>
        </div>
    </section>
@endsection