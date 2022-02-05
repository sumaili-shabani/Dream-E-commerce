<?php

namespace App\Models\Order;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    // protected $fillable = [
    //     'payment_intent_id', 'amount','payment_created_at', 'products','user_id'
    // ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

}
