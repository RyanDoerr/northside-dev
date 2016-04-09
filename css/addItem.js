$(document).ready(function(){
	
						$(function() {
							$( "#tabs" ).tabs();
							});
							
						$('input[name=add]').click(function(){
							var activeIndex = $("#tabs").tabs('option', 'active');
							activeIndex++; //Make it start at 1, not 0
							
						
								$('#tabs-'+activeIndex + ' .selectItems').first().clone().insertAfter('#tabs-'+activeIndex + ' .selectItems:last');
								$('#tabs-'+activeIndex + ' .selectItems:last input').val(1); //make sure default value of quantity is 1
							

							
							
						});

								
						$( 'form' ).submit(function( event ) {
							//var fields = $(':input').serializeArray();
							
							
							
							//console.log( $( this ).serializeArray() );
							//event.preventDefault();
						});		


						$('input[name=otherAdd]').click(function(){
							
							$('.selectItems').first().clone().insertAfter('.selectItems:last');
							$('.selectItems:last input').val(1); //make sure default value of quantity is 1
							

							
							
						});
						
						
					});
				
