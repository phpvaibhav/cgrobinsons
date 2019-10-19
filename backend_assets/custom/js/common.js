var errorClass = 'invalid';
var errorElement = 'em';
/*getPrevious address uin customer*/
$(".getAddressshow").hide();
function getPrevious(e){
  var customerId = $(e).val();
  /*ajax*/
  $.ajax({
    type: "POST",
    url: base_url+'adminapi/customers/getPreviousAddress',
    data: {customerId:customerId},
    headers: { 'authToken':authToken},
    cache: false,
    beforeSend: function() {
      preLoadshow(true);
    },     
    success: function (res) {
      preLoadshow(false);
    if(res.status=='success'){
      $(".getAddressshow").show();
      $("#previousAddress").html(res.address);
    }else{
      $(".getAddressshow").hide();
      $("#previousAddress").html('<div class="col-sm-12 col-md-12">No result found right now.</div>');
    }
    }
  });
  /*ajax*/
}
function radio_fun(e){
    $(".setAddessLocation").removeClass("addressborder");
    $(e).addClass("addressborder");
}