$(document).ready(function(){
						$('input[type=button]').click(function(){
							$( '.selectItems' ).first().clone().insertAfter( '.selectItems:last' );	
							
						});

								
						$( 'form' ).submit(function( event ) {
							//var fields = $(':input').serializeArray();
							
							
							
							//console.log( $( this ).serializeArray() );
							//event.preventDefault();
						});		
				});