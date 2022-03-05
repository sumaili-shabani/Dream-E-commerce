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

// Route::get('/', function () {
//     return view('products.index');
// });

//product
Route::group(['namespace'   =>  "Product"], function(){
     Route::get("/", 'ProductController@index')->name('homePage');
    Route::get("/shop", 'ProductController@index')->name('homePage');
    Route::get("/boutique", 'ProductController@index')->name('homePage');
    Route::get('/boutique/{slug}', 'ProductController@show')->name('products.show');
    Route::get('/search', 'ProductController@search')->name('products.search');

    Route::get('/facture', 'ProductController@printBill')->name('facture');
    
});

//cart
Route::group(['namespace'   =>  "Cart"], function(){
    Route::post('/panier/ajouter', 'CartController@store')->name('cart.store');
    Route::get('/videpanier', 'CartController@delete_all')->name('delete_all');

    Route::post('/updatepanier', 'CartController@update')->name('cart.update');

    Route::get('/panier', 'CartController@index')->name('cart.index');
    Route::delete('/panier/{rowId}', 'CartController@destroy')->name('cart.destroy');
});

Route::group(['namespace'   =>  "Checkout"], function(){ 
    Route::get('/paiement', 'CheckoutController@index')->name('checkout.index');
    Route::post('/paiement', 'CheckoutController@store')->name('checkout.store');
    Route::get('/merci', 'CheckoutController@thankYou')->name('checkout.thankYou');

});






Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
