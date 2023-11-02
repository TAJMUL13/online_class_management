<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'classController@index');
Route::get('/online-class-nursery', 'classController@classNursery');
Route::get('/online-class-junior-one', 'classController@classJuniorOne');
Route::get('/online-class-one', 'classController@classOne');
Route::get('/online-class-two', 'classController@classTwo');
Route::get('/online-class-three', 'classController@classThree');
Route::get('/online-class-four', 'classController@classFour');
Route::get('/online-class-five', 'classController@classFive');
Route::get('/online-class-six', 'classController@classSix');
Route::get('/online-class-seven', 'classController@classSeven');
Route::get('/online-class-eight', 'classController@classEight');
Route::get('/online-class-nine', 'classController@classNine');
Route::get('/online-class-ten', 'classController@classTen');


Route::get('/sscraj.com', 'AdminController@index')->name('sscraj.com')->middleware('auth');
Route::get('/create/class', 'AdminController@create')->middleware('auth');
Route::get('/create/class', 'AdminController@create')->name('create/class')->middleware('auth');
Route::post('/store/class', 'AdminController@store')->middleware('auth');
Route::get('/class/getsubject/{id}', 'AdminController@getSubject')->middleware('auth');
Route::get('/class/delete/{id}', 'AdminController@destroy')->middleware('auth');
Route::get('/class/edit/{id}', 'AdminController@edit')->middleware('auth');
Route::post('/update/class/{id}', 'AdminController@update')->middleware('auth');
Route::get('/class/list', 'AdminController@allvideos')->name('class/list')->middleware('auth');
Route::get('/logout', function () {
	Session::flush();
    return Redirect::to('/login');

});
Route::get('/home', function () {
	// Session::flush();
    return Redirect::to('/sscraj.com');

});
Route::get('/backup', function () {
	// Session::flush();
  return view('admin.backup');

});
Auth::routes(['register' => true]);

// Route::get('/home', 'HomeController@index')->name('sscraj.com');
// Route::get('/home', 'HomeController@index')->name('sscraj.com');
