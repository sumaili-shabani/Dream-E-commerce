<?php

namespace App\Models\Product;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $fillable = [
        'title', 'slug','subtitle', 'description','price', 'image'
    ];

    public function getPrice()
    {
        $price = $this->price / 100;

        return number_format($price, 2, ',', ' ') . ' $';
    }

    public function categories()
    {
        return $this->belongsToMany('App\Models\Category\Category');
    }
}
