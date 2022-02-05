@extends('layouts.master')

@section('extra-meta')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('content')
<div class="col-md-12 text-center">
    <h4>Mon panier</h4>
</div>
@if (Cart::count() > 0)

<div class="container">
	<div class="col-md-12">
		<div class="row">


			<div class="px-4 px-lg-0">
			    <div class="pb-5">
			        <div class="container">
			            <div class="row">
			                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
			                    <!-- Shopping cart table -->
			                    <div class="table-responsive">
			                    	<table class="table">
									   	<thead>
									       	<tr>
									       		<th scope="col" class="border-0 bg-light">
			                                		<div class="p-2 px-3 text-uppercase">Produit</div>
					                            </th>
					                            <th scope="col" class="border-0 bg-light">
					                                <div class="py-2 text-uppercase">Quantité </div>
					                            </th>
					                            <th scope="col" class="border-0 bg-light">
					                                <div class="py-2 text-uppercase">Prix</div>
					                            </th>
					                            <th scope="col" class="border-0 bg-light">
					                                <div class="py-2 text-uppercase">Sup</div>
					                            </th>
									           	{{-- <th>Subtotal</th> --}}
									       	</tr>
									   	</thead>

									   	<tbody>

									   		<?php foreach(Cart::content() as $row) :?>

									       		<tr>
									       			
									           		<td class="border-0 align-middle">
									               		<p><strong><?php echo $row->name; ?></strong></p>
									               		<p><?php echo ($row->options->has('size') ? $row->options->size : ''); ?></p>
									           		</td>
									           		<td class="border-0 align-middle">
									           			{{-- <input type="text" value="<?php echo $row->qty; ?>"> --}}

									           			<?php //echo $row->qty; ?>
									           			<select class="custom-select" name="qty" id="qty" data-id="{{ $row->rowId }}">
				                                            @for ($i = 1; $i <= 10; $i++)
				                                                <option value="{{ $i }}" {{ $row->qty == $i ? 'selected' : ''}}>
				                                                    {{ $i }}
				                                                </option>
				                                            @endfor
				                                        </select>
									           			
									           		</td>
									           		<td class="border-0 align-middle">
									           			<?php 
									           			$price = $row->price / 100;
									           				echo(number_format($price, 2, ',', ' ') . ' $');
									           			?>
									           			
									           				
									           		</td>
									           		{{-- <td class="border-0 align-middle">$<?php echo $row->total; ?></td> --}}

									           		<td class="border-0 align-middle">
					                                    <form action="{{ route('cart.destroy', $row->rowId) }}" method="POST">
					                                        @csrf
					                                        @method('DELETE')
					                                        <button type="submit" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i></a>
					                                    </form>
					                                </td>
									       		</tr>

										   	<?php endforeach;?>

									   	</tbody>
									   	
									   {{-- 	<tfoot>
									   		<tr>
									   			<td colspan="3" class="border-0 align-middle">&nbsp;</td>
									   			<td>Subtotal</td>
									   			<td><?php echo Cart::subtotal(); ?></td>
									   		</tr>
									   		<tr>
									   			<td colspan="3" class="border-0 align-middle">&nbsp;</td>
									   			<td>Tax</td>
									   			<td><?php echo Cart::tax(); ?></td>
									   		</tr>
									   		<tr>
									   			<td colspan="3" class="border-0 align-middle">&nbsp;</td>
									   			<td>Total</td>
									   			<td><?php echo Cart::total(); ?></td>
									   		</tr>
									   	</tfoot> --}}
									</table>
			                       
			                    </div>
			                    <!-- End -->
			                </div>
			            </div>
			            <div class="row py-5 p-4 bg-white rounded shadow-sm">
			                    <div class="col-lg-6">
			                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">CODE PROMO</div>
			                    <div class="p-4">
			                        <p class="font-italic mb-4">Si vous avez un code promo, veuillez l'entrer dans la case ci-dessous</p>
			                        <div class="input-group mb-4 border rounded-pill p-2">
				                        <input type="text" placeholder="Appliquer Coupon" aria-describedby="button-addon3" class="form-control border-0">
				                        <div class="input-group-append border-0">
				                            <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Appliquer Coupon</button>
				                        </div>
			                        </div>
			                    </div>
			                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">INSTRUCTIONS POUR LE VENDEUR</div>
			                    <div class="p-4">
			                        <p class="font-italic mb-4">Si vous avez des informations pour le vendeur, vous pouvez les laisser dans la case ci-dessous</p>
			                        <textarea name="" cols="30" rows="2" class="form-control"></textarea>
			                    </div>
			                    </div>
			                    <div class="col-lg-6">
			                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">RÉCAPITULATIF DE LA COMMANDE </div>
			                    <div class="p-4">
			                        <p class="font-italic mb-4">Les frais d'expédition et les frais supplémentaires sont calculés en fonction des valeurs que vous avez saisies.</p>
			                        <ul class="list-unstyled mb-4">
			                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">sous-total de la commande </strong>
			                        	<strong>
			                        	
					           				{{ getPrice(Cart::subtotal()) }}
					           			</strong>
					           		</li>
			                       {{--  <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Frais de port et de manutention</strong><strong>$10.00</strong></li> --}}
			                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Taxe</strong><strong>{{ getPrice(Cart::tax()) }}</strong></li>
			                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
			                            <h5 class="font-weight-bold">{{ getPrice(Cart::total()) }}</h5>
			                        </li>
			                        </ul><a href="{{ route('checkout.index') }}" class="btn btn-dark rounded-pill py-2 btn-block">Passer à la caisse</a>
			                    </div>
			                    </div>
			            </div>
			        </div>
			    </div>
			</div>
			


		</div>
	</div>
	
</div>

@else
    <div class="col-md-12 text-center">
        <p>Votre panier est vide.</p>
    </div>
@endif

@endsection

@section('extra-js')
<script>
    var qty = document.querySelectorAll('#qty');
    Array.from(qty).forEach((element) => {
        element.addEventListener('change', function () {
            var rowId = element.getAttribute('data-id');
            var token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

            fetch(`/updatepanier`,
                {
                    headers: {
                        "Content-Type": "application/json",
                        "Accept": "application/json, text-plain, */*",
                        "X-Requested-With": "XMLHttpRequest",
                        "X-CSRF-TOKEN": token
                    },
                    method: 'post',
                    body: JSON.stringify({
                        qty: this.value,
                        rowId:rowId
                    })
            }).then((data) => {
                console.log(data);
                location.reload();
            }).catch((error) => {
                console.log(error);
            });
        });
    });
</script>
@endsection