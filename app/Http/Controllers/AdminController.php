<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use session;
use App\allvideo;
class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.dashboard');
        // return 'hi';
    }

    public function allvideos()
    {

        $all_classes =  DB::table('allvideos')
                    ->join('allclasses', 'allvideos.class_id', 'allclasses.id')
                    ->join('allsubjects', 'allvideos.subject_id', 'allsubjects.id')
                    ->select('allvideos.*','allclasses.name as class_name','allsubjects.subject as subject_name')
                    ->orderBy('id', 'desc')
                    ->get();
        return view('admin.all_class',compact('all_classes'))->with('no',1);
        // return 'hi';
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // get all class
        $all_class= DB::table('allclasses')->get();
        // get last class
        // $last_class =  DB::table('allvideos')->orderBy('created_at', 'desc')->first();
    $last_classes =  DB::table('allvideos')
                    ->join('allclasses', 'allvideos.class_id', 'allclasses.id')
                    ->join('allsubjects', 'allvideos.subject_id', 'allsubjects.id')
                    ->select('allvideos.*','allclasses.name as class_name','allsubjects.subject as subject_name')
                    ->orderBy('id', 'desc')
                    ->take(2)
                    ->get();
// dd($last_class);
        return view('admin.create_class',compact('all_class','last_classes'));
    }

    public function getSubject($id) 
    {
        $subjects = DB::table("allsubjects")->where("class_id",$id)->pluck("subject","id");
        return json_encode($subjects);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data= $request->except('_token');
        // $data= $request->all();
        allvideo::create($data);

        $notification = array(
            'message' => 'New class video created successfully!',
            'alert-type' => 'success',
            'title'=>'Success'
        );
        return Redirect()->route('create/class')->with($notification);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $video_info=allvideo::find($id);
        $all_class= DB::table('allclasses')->get();

        return view('admin.edit_class',compact('video_info','all_class'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $updated_info= $request->all();
        allvideo::find($id)->update($updated_info);
        $notification = array(
            'message' => 'Class updated successfully!',
            'alert-type' => 'success',
            'title'=>'Success'
        );

         return Redirect()->route('class/list')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       allvideo::find($id)->delete();

        
             $notification = array(
            'message' => 'Class deleted successfully!',
            'alert-type' => 'error',
            'title'=>'Success'
        );
        return Redirect()->route('class/list')->with($notification);
         
    }
    
}
