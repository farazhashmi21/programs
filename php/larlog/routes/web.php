<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
Route::get('/', function () {
    return view('welcome');
});
Route::get('/','Wellcome@index');
Route::get('/','Wellcome@siteDown');
Route::get('/home','Wellcome@index');
Route::get('/about','Wellcome@about');
Route::get('/services','Wellcome@services');
Route::get('/contact','Wellcome@contact');
Route::get('/siteDown/{name}','Wellcome@siteDown');
Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return "Cache is cleared";
});
*/
Route::get('/','Wellcome@enter');
Route::get('/home','Wellcome@index');
Route::get('/about','Wellcome@about');
Route::get('/services','Wellcome@services');
Route::get('/contact','Wellcome@contact');
Route::get('/admin','Wellcome@login');
Route::resource('posts','PostsController');
Route::resource('lists','ListsController');
Route::get('/clearAll',function(){
  Artisan::call('view:clear');
  Artisan::call('config:clear');
  Artisan::call('route:clear');
  Artisan::call('cache:clear');
// Reference Artical: https://tecadmin.net/clear-cache-laravel-5/
  return 'All Cleared';
});
Route::resource('engines','EngineConfigurations');
Route::resource('cust','Customers');
Route::resource('comments','Comments');
// How to Setup a Laravel Project You Cloned from Github.com: https://devmarketer.io/learn/setup-laravel-project-cloned-github-com/
