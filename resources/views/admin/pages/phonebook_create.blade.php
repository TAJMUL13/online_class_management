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
                <h3 class="card-title">Add New Phone Book / Address book</h3>

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
				<form  method="POST" action="creates">
					@csrf
					<div class="form-group">
						<label for="phonebook_name">Phonebook Name</label>
						<input type="text" class="form-control" id="phonebook_name" placeholder="Phonebook Name" name="name">
					</div>
				      <div class="form-group">
				        <label for="slug">Phonebook Slug</label>
				        <input type="text" class="form-control" id="slug" placeholder="Slug" name="slug">
				      </div>
				    <div class="card-footer">
				      <button type="submit" class="btn btn-primary">Create Phonebook</button>
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