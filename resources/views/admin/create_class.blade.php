@extends('admin/master')
@section('title','Class Submit | New Class')
@section('main_content')



<?php 


function timeDiff($firstTime,$lastTime){
   // convert to unix timestamps
   $firstTime=strtotime($firstTime);
   $lastTime=strtotime($lastTime);

   // perform subtraction to get the difference (in seconds) between times
   $timeDiff=$lastTime-$firstTime;

   // return the difference
   return $timeDiff;
}

//Usage :
// $difference = timeDiff("2002-03-16 10:00:00",date("Y-m-d H:i:s"));
// $years = abs(floor($difference / 31536000));
// $days = abs(floor(($difference-($years * 31536000))/86400));
// $hours = abs(floor(($difference-($years * 31536000)-($days * 86400))/3600));
// $mins = abs(floor(($difference-($years * 31536000)-($days * 86400)-($hours * 3600))/60));#floor($difference / 60);
// echo "<p>Time Passed: " . $years . " Years, " . $days . " Days, " . $hours . " Hours, " . $mins . " Minutes.</p>";

?>
<section class="content">
      <div class="container-fluid">
        <div class="row">
           <div class="col-12">
          <h4 class="text-center text-bold">Last Published Class </h4>
          <table id="example2" id="datatable" class="table table-bordered table-hover">
              <thead>
              
              </thead>
              <tbody>
                @foreach($last_classes as $last_class)
              <tr>
                <td>#</td>
                <td>{{$last_class->class_name}}</td>
                <td>{{$last_class->subject_name}}</td>
                <td>{{$last_class->date}}</td>
                <!-- <td>{{$first_time= $last_class->created_at}}</td> -->
                <td>
<?php 
$difference = timeDiff($first_time,date("Y-m-d H:i:s"));
$years = abs(floor($difference / 31536000));
$days = abs(floor(($difference-($years * 31536000))/86400));
$hours = abs(floor(($difference-($years * 31536000)-($days * 86400))/3600));
$mins = abs(floor(($difference-($years * 31536000)-($days * 86400)-($hours * 3600))/60));#floor($difference / 60); 
// $sec = $mins*60;#floor($difference / 60); 
// echo $mins." minutes ago";
if ($mins<1) {
  echo $difference." seconds ago";
}elseif ($mins<60 && $hours==0) {
 echo $mins." minutes ago";
}elseif ($mins<60 && $hours!==0) {
 echo $hours.' h '.$mins." minutes ago";
}elseif ($hours>0) {
 echo $hours." hour ago";
}

?>
                  
                </td>
                <td><a class="btn btn-primary" href="{{$last_class->youtube_link}}" style="padding:3px 100px">View Now</a></td>
              </tr>
              @endforeach
               </tbody>
              
            </table>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header bg-success">
                <h3 class="card-title text-bold">Add New Class</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                    <i class="fas fa-minus"></i></button>
                  <button type="button" class="btn btn-tool" data-card-widget="xremove" data-toggle="tooltip" title="Remove">
                    <i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
             
        <form  method="POST" action="/store/class">
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
            <input type="text" name="date" id="datepicker" class="form-control" value="<?php echo date('d-M-Y');?>" autocomplete="off">
          </div>
          <input type="hidden" name="term_id" value="2">
            <div class="form-group">
              <label for="number">Video Link</label>
              <input type="url" class="form-control" id="number" placeholder="Link" name="youtube_link" required="" autocomplete="off">
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