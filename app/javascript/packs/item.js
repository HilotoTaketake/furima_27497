$(function() {
  $(".price-input").on("input", function() {
    let price = $(".price-input").val();
    if ( price > 300 && price < 9,999,999 ){
    $("#add-tax-price").text( price*0.1 );
    $("#profit").text( price*0.9);
  }
  });
});
