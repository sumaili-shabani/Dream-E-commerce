<?php

namespace App\Http\Controllers\Checkout;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Order\{Order};

use Illuminate\Support\Facades\Session;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Arr;

use Illuminate\Support\Facades\Auth;

use DateTime;
use Stripe\Stripe;
use Stripe\PaymentIntent;


class CheckoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        if (Cart::count() <= 0) {
            return redirect()->route('homePage');
        }

        Stripe::setApiKey('sk_test_51GzffmHcKfZ3B3C9DATC3YXIdad2ummtHcNgVK4E5ksCLbFWWLYAyXHRtVzjt8RGeejvUb6Z2yUk740hBAviBSyP00mwxmNmP1');
        $intent = PaymentIntent::create([
            'amount'    => round(Cart::total()),
            'currency'  => 'usd'
        ]);

        $clientSecret = Arr::get($intent, 'client_secret');

        // dd($intent);
        return view('checkout.index',[
            'clientSecret' => $clientSecret
        ]);
    }

    public function thankyou()
    {
        return Session::has('success') ? view('checkout.thankYou') : redirect()->route('homePage');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        /*
        Cart::destroy();
        $data = $request->json()->all();
        return $data['paymentIntent'];
        */

        $data = $request->json()->all();

        $order = new Order();

        $order->payment_intent_id = $data['paymentIntent']['id'];
        $order->amount = $data['paymentIntent']['amount'];

        $order->payment_created_at = (new DateTime())
            ->setTimestamp($data['paymentIntent']['created'])
            ->format('Y-m-d H:i:s');

        $products = [];
        $i = 0;

        foreach (Cart::content() as $product) {
            $products['product_' . $i][] = $product->name;
            $products['product_' . $i][] = $product->price;
            $products['product_' . $i][] = $product->qty;
            $i++;
        }

        $id = Auth::id();

        $order->products = serialize($products);
        $order->user_id = Auth()->user()->id;
        $order->save();

        if ($data['paymentIntent']['status'] === 'succeeded') {
            Cart::destroy();
            return response()->json(['success' => $products]);
            
        } else {
            // return response()->json(['error' => "Échec de l'intention de paiement"]);
        }

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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
