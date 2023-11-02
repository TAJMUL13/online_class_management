<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class classController extends Controller
{
    /**
     * ----------------------ALL CLASS *
     * 
     */
    public function index()
    {
        return view('class.all_class');
    }

    /**
     * ----------------------NURSERY *
     *
     * 
     */

    public function classNursery()
    {

        $all_subject= DB::table('allsubjects')->where('class_id','9')->get();
        return view('class.nursery',compact('all_subject'));
    }
    /**
     * ----------------------JUNIOR ONE *
     *
     * 
     */

    public function classJuniorOne()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','10')->get();
        return view('class.junior',compact('all_subject'));
    }

    /**
     * ---------------------- ONE *
     *
     * 
     */

    public function classOne()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','11')->get();
        return view('class.one',compact('all_subject'));
    }

    /**
     * ---------------------- TWO *
     *
     * 
     */

    public function classTwo()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','12')->get();
        return view('class.two',compact('all_subject'));
    }

    /**
     * ----------------------THREE *
     *
     * 
     */

    public function classThree()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','13')->get();
        return view('class.three',compact('all_subject'));
    }

    /**
     * ----------------------FOUR *
     *
     * 
     */

    public function classFour()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','14')->get();
        return view('class.four',compact('all_subject'));
    }

    /**
     * ----------------------FIVE *
     *
     * 
     */

    public function classFive()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','15')->get();
        return view('class.five',compact('all_subject'));
    }

    /**
     * ----------------------SIX *
     *
     * 
     */

    public function classSix()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','16')->get();
        return view('class.six',compact('all_subject'));
    }

    /**
     * ---------------------- SEVEN *
     *
     * 
     */

    public function classSeven()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','17')->get();
        return view('class.seven',compact('all_subject'));
    }

    /**
     * ----------------------EIGHT *
     *
     * 
     */

    public function classEight()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','18')->get();
        return view('class.eight',compact('all_subject'));
    }

    /**
     * ----------------------NINE *
     *
     * 
     */

    public function classNine()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','19')->get();
        return view('class.nine',compact('all_subject'));
    }

    /**
     * ----------------------TEN *
     *
     * 
     */

    public function classTen()
    {
        $all_subject= DB::table('allsubjects')->where('class_id','20')->get();
        return view('class.ten',compact('all_subject'));
    }
    
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * 
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * 
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * 
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * 
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * 
     */
    public function destroy($id)
    {
        //
    }
}
