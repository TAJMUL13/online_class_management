@extends('admin/master')
@section('title','Class Submit | New Class')
@section('main_content')


<section class="content">
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header bg-success">
                <h3 class="card-title text-bold">Update Class</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                    <i class="fas fa-minus"></i></button>
                  <button type="button" class="btn btn-tool" data-card-widget="xremove" data-toggle="tooltip" title="Remove">
                    <i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
             
        <form  method="POST" action="/update/class/{{$video_info->id}}">
          @csrf
            <div class="form-group">
              <label for="number">Class</label>
              <select name="class_id" id="class_id" class="form-control">
                <option value="">---select class----</option>
                @foreach($all_class as $data)
                  <option value="{{$data->id}}">{{$data->name}}</option>
                @endforeach
              </select>
            </div>

          <div class="form-group">
            <label for="contact_name">Subject Name</label>
            <select name="subject_id" id="subject_id" class="form-control">
                  <option value="">---select subject----</option>
              </select>
          </div>
           <div class="form-group">
            <label for="contact_name">Date</label>
            <input type="text" name="date" id="datepicker" class="form-control" value="{{$video_info->date}}" autocomplete="off">
          </div>
          <input type="hidden" name="term_id" value="2">
            <div class="form-group">
              <label for="number">Video Link</label>
              <input type="url" class="form-control" id="number" placeholder="Link" name="youtube_link" required="" autocomplete="off" value="{{$video_info->youtube_link}}">
            </div>
             <button type="submit" class="btn btn-primary btn-block" style="">Publish Now</button>
            
        </form>
              </div>
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
@endsection