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

/**
 * routes for all user tabs
 */
Route::get('/', 'PagesController@index')->name('home');
Route::get('/rules', 'PagesController@rules')->name('rules');
Route::get('/profile', 'PagesController@profile')->name('profile');
Route::get('/table', 'PagesController@table')->name('table');
Route::resource('/post', 'PostController')->except(['create', 'update', 'edit']);
Route::resource('/tip', 'TipController')->except(['edit', 'create', 'store', 'update', 'show', 'destroy']);
Route::get('/avatar', 'PagesController@avatar')->name('avatar');
Route::post('/avatar', 'PagesController@storeAvatar')->name('avatar.store');

/**
 * admin routes
 */
Route::resource('/participant', 'ParticipantController')->only(['index', 'edit', 'update', 'destroy']);
Route::get('/participant/{participant}/delete', 'ParticipantController@delete')->name('participant.delete');
Route::resource('/result', 'ResultController')->except(['create', 'show']);
Route::get('/result/{result}/delete', 'ResultController@delete')->name('result.delete');
Route::get('/alias/{id}', 'PagesController@alias')->name('alias');
Route::put('/alias/{id}', 'PagesController@updateAlias')->name('alias.update');

/**
 * oauth login facebook
 */
Route::get('login/facebook', 'Auth\LoginController@redirectToProvider')->name('facebook');
Route::get('login/facebook/callback', 'Auth\LoginController@handleProviderCallback');

/**
 * Authentication routes
 */
Auth::routes();
