
@extends('layouts.master')

@section('content')

  <div class="contaire">
    <div class="col-md-12">
      <div class="row">

        <div class="col-md-2"></div>
        <div class="col-md-10">

          <div class="col-md-12">
              <div class="col-md-12 row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-auto position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                  <strong class="d-inline-block mb-2 text-success">
                     @foreach ($product->categories as $category)
                      {{-- expr --}}
                      {{  $category->name }}
                    @endforeach
                  </strong>
                  <h5 class="mb-0">{{ $product->title }}</h5>
                  <hr>
                  <p class="mb-auto text-muted">{!!  $product->description !!}</p>
                  {{-- <p class="mb-auto text-muted"><?php echo(html_entity_decode($product->description)) ?></p> --}}
                  <strong class="mb-auto font-weight-normal text-secondary"><b>{{ $product->getPrice() }} </b></strong> 
                  <form action="{{ route('cart.store') }}" method="POST">
                    @csrf
                    <input type="hidden" name="id" value="{{ $product->id }}">
                    
                    <button type="submit" class="btn btn-dark btn-block"><i class="fa fa-shopping-cart mr-1"></i> Ajouter au panier</button>
                  </form>
                </div>
                <div class="col-auto d-none d-lg-block">
                  <img width="200" height="250" data-src="{{ asset('images/'.$product->image) }}" src="{{ asset('storage/'.$product->image) }}" alt="Card image cap">
                </div>
              </div>
          </div>
          
        </div>
        
        
        
      </div>
      
    </div>
  </div>


@endsection


