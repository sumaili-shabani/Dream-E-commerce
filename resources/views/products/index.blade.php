@extends('layouts.master')

@section('content')

 <div class="container">
   <div class="col-md-12">

    <div class="row">

      <div class="col-md-12">

        <div class="row mb-2">
          {{-- item --}}
          @foreach ($products as $product)
            {{-- expr --}}
             <div class="col-md-6">
              <div class="card flex-md-row mb-4 box-shadow h-md-250">
                <div class="card-body d-flex flex-column align-items-start">
                  <strong class="d-inline-block mb-2 text-primary">
                    @foreach ($product->categories as $category)
                      {{-- expr --}}
                      {{  $category->name }}
                    @endforeach
                  </strong>
                  <h6 class="mb-0">
                    <a class="text-dark" href="#">{{ $product->title }}</a>
                  </h6>
                  <div class="mb-1 text-muted">{{ $product->created_at->format('d/m/y') }}</div>
                  <p class="card-text mb-auto">{{ $product->subtitle }}</p>
                  <p class="card-text mb-auto"><b>{{ $product->getPrice() }} </b></p>
                  <a href="{{ route('products.show', $product->slug) }}" class="stretched-link btn btn-dark btn-block"><i class="fa fa-location-arrow" aria-hidden="true"></i> Consulter le produit</a>
                </div>
                <img class="card-img-right flex-auto d-none d-md-block" width="200" height="250" data-src="{{ asset('storage/'.$product->image) }}" src="{{ asset('storage/'.$product->image) }}" alt="Card image cap">
              </div>
            </div>
          @endforeach
         
          {{-- fin item --}}

          <div class="col-md-12 mt-1">
              {{-- pagination ici --}}
                {{ $products->appends(request()->input())->links() }}
              {{-- fin pagination --}}
          </div>

          
        </div>
        
      </div>
      
    </div>
     
   </div>
 </div>

@endsection