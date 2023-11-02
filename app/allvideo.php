<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class allvideo extends Model
{
    protected $fillable=['class_id','subject_id','term_id','date','youtube_link'];
}
