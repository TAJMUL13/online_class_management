{{-- Extends the Master file--}}
@extends('../master')
{{-- Title--}}
@section('title','SMS | Phonebook Create')
{{-- heading content --}}
@section('heading','Add New Phonebook')
{{-- Main content--}}
@section('main_content')
<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Update Contacts</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                    <i class="fas fa-minus"></i></button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                    <i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                {{-- show error --}}
              @if ($errors->any())
                <div class="alert alert-danger">
                  <ul>
                      @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                      @endforeach
                  </ul>
                </div><br />
              @endif
              {{-- end show error --}}
        <form  method="POST" action="/contact/update/{{$datas_c->id}}">
          @csrf
          <div class="form-group">
            <label for="contact_name">Contacts Name</label>
            <input type="text" class="form-control" id="contact_name" placeholder="Contacts Name" name="name" value="{{$datas_c->name}}">
          </div>
            <div class="form-group">
              <label for="number">Number</label>
              <input type="text" class="form-control" id="number" placeholder="number" name="mobile" value="{{$datas_c->mobile}}">
            </div>
            <div class="form-group">
              <label for="number">Phonebook</label>
              <select name="phonebook_id" id="" class="form-control">
                @foreach($datas_p as $data)
                  <option value="{{$data->id}}">{{$data->name}}</option>
                @endforeach
              </select>
            </div>
            <div class="card-footer">
              <button type="submit" class="btn btn-primary">Update Phonebook</button>
            </div>
        </form>
              </div>
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>

@endsection