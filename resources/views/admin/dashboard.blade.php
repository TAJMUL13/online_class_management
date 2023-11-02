@extends('admin/master')
@section('title','Online Class | Dashboard')
@section('main_content')

<?php 

  $total_class =  DB::table('allvideos')->count();
  $today_class =  DB::table('allvideos')->where('date',date('j-F-Y'))->count();

  $last_update_time =  DB::table('allvideos')->orderBy('created_at', 'desc')->first();
  $last_update= date("j-F-Y h:i A",strtotime($last_update_time->created_at));

?>
<section class="content">
  <div class="container-fluid">
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-info">
          <div class="inner">
            <h3><?php echo $total_class; ?></h3>

            <p>Total Video</p>
          </div>
          <div class="icon">
            <i class="fa fa-video"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-success">
          <div class="inner">
            <h3><?php echo $today_class; ?></h3>

            <p>Today Video</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-6">
      
        <div class="small-box bg-warning">
          <div class="inner">
            <h3 style="font-size: 20px;padding-bottom:18px;" class=""><?php echo $last_update?></h3>

            <p>Last Update</p>
          </div>
          <div class="icon">
            <i class="fa fa-clock"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-danger">
          <div class="inner">
            <h3>---</h3>

            <p>-----------------</p>
          </div>
          <div class="icon">
            <i class="ion ion-pie-graph"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
    </div>
    <!-- /.row -->
    <!-- Main row -->
    
    <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
</section>
@endsection