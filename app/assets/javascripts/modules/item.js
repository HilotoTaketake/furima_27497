$(function() {
  $(".price-input").on("input", function() {
    let price = $(".price-input").val()
    if ( price < 300 && price < 9,999999 ){
      $("#add-tax-price").text( price*0.1 );
  }
  });
});

$(function() {
  $(".price-input").on("input", function() {
    let price = $(".price-input").val();
    $("#profit").text( price*0.9);
//   if (price > 300 && price < 9,999,999){
//     $("tax").append(price * 0.1).to_i;
//   }
  });
});


  