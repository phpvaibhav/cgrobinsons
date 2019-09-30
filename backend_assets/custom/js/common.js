  var errorClass = 'invalid';
      var errorElement = 'em';
//sign up
$("#customerAddUpdate").validate({// Rules for form validation
   errorClass    : errorClass,
   errorElement  : errorElement,
  highlight: function(element) {
        $(element).parent().removeClass('state-success').addClass("state-error");
        $(element).removeClass('valid');
    },
    unhighlight: function(element) {
        $(element).parent().removeClass("state-error").addClass('state-success');
        $(element).addClass('valid');
    },
  rules : {
    fullName : {
      required : true
    },
    email : {
      required : true,
      email : true
    },
    contactNumber : {
      required : true,
    
    },
    password : {
      required : true,
      minlength : 3,
      maxlength : 20
    }, 
    address : {
      required : true,
    
    },
    latitude : {
      required : true,
    
    },
	longitude : {
      required : true,
    
    }, 
    address1 : {
      required : true,
    
    },
    latitude1 : {
      required : true,
    
    },
	longitude1 : {
      required : true,
    
    },

  },
  // Messages for form validation
  messages : {
    fullName : {
      required : 'Please enter your customer name'
    },
    email : {
      required : 'Please enter your email address',
      email : 'Please enter a valid email address'
    },
    contactNumber : {
      required : 'Please enter your contact number'
    },
    password : {
      required : 'Please enter your password'
    },
    address : {
      required : 'Please enter your address'
    },
    address1 : {
      required : 'Please enter your billing address'
    }
  },
  // Ajax form submition
  submitHandler : function(form) {
    toastr.clear();
       $('#submit').prop('disabled', true);
      $.ajax({
        type: "POST",
        url: base_url+'adminapi/'+$(form).attr('action'),
        headers: { 'authToken':authToken},
        data: $(form).serialize(),
        cache: false,
        beforeSend: function() {
          preLoadshow(true);
          $('#submit').prop('disabled', true);  
        },     
        success: function (res) {
          preLoadshow(false);
          setTimeout(function(){  $('#submit').prop('disabled', false); },4000);
          if(res.status=='success'){
            toastr.success(res.message, 'Success', {timeOut: 3000});
            setTimeout(function(){window.location.reload(); },4000);
          }else{
            toastr.error(res.message, 'Alert!', {timeOut: 4000});
          }
        }
      });
     return false; // required to block normal submit since you used ajax
  },
  // Do not change code below
  errorPlacement : function(error, element) {
    error.insertAfter(element.parent());
  }
});
/*listing customer_list */
var customer_list = $('#customer_list').DataTable({ 

              "processing": true, //Feature control the processing indicator.
              "serverSide": true, //Feature control DataTables' servermside processing mode.
              "order": [], //Initial no order.
               "lengthChange": false,
              "oLanguage": {
               "sEmptyTable" : '<center>No customer found</center>',
                "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               "oLanguage": {
               "sZeroRecords" : '<center>No customer found</center>',
                 "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               initComplete: function () {
    $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
    },
             
              // Load data for the table's content from an Ajax source
              "ajax": {
                  "url": base_url+"adminapi/customers/customerList",
                  "type": "POST",
                  "dataType": "json",
                  "headers": { 'authToken':authToken},
                  "dataSrc": function (jsonData) {
                     
                      return jsonData.data;
                  }
              },
              //Set column definition initialisation properties.
              "columnDefs": [
                  { orderable: false, targets: -1 },
                  
              ]

          });
        /*listing customer_list*/
//customer status      
function customerStatus(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/customers/customerStatus',
                 data: {use:$(e).data('useid') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                 $('#customer_list').DataTable().ajax.reload();
                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}

//customer Credit hold
function creditHoldStatus(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
     $(e).prop('disabled', true);
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/customers/creditHoldStatus',
                 data: {use:$(e).data('useid') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                     $(e).prop('disabled', false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
               setTimeout(function(){ window.location.reload(); },3000);

                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
//customer Delete
function customerDelete(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
     $(e).prop('disabled', true);
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/customers/customerDelete',
                 data: {use:$(e).data('useid') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                     $(e).prop('disabled', false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                  setTimeout(function(){  window.location = base_url+'customers'; },3000);

                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
/*******************************************************************************/
/*listing driver_list */
var driver_list = $('#driver_list').DataTable({ 

              "processing": true, //Feature control the processing indicator.
              "serverSide": true, //Feature control DataTables' servermside processing mode.
              "order": [], //Initial no order.
               "lengthChange": false,
              "oLanguage": {
               "sEmptyTable" : '<center>No driver found</center>',
                "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               "oLanguage": {
               "sZeroRecords" : '<center>No driver found</center>',
                 "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               initComplete: function () {
    $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
    },
             
              // Load data for the table's content from an Ajax source
              "ajax": {
                  "url": base_url+"adminapi/drivers/driverList",
                  "type": "POST",
                  "dataType": "json",
                  "headers": { 'authToken':authToken},
                  "dataSrc": function (jsonData) {
                     
                      return jsonData.data;
                  }
              },
              //Set column definition initialisation properties.
              "columnDefs": [
                  { orderable: false, targets: -1 },
                  
              ]

          });
/*listing driver_list*/
//driver Add
    
$("#driverAddUpdate").validate({// Rules for form validation
    errorClass    : errorClass,
        errorElement  : errorElement,
        highlight: function(element) {
              $(element).parent().removeClass('state-success').addClass("state-error");
              $(element).removeClass('valid');
          },
          unhighlight: function(element) {
              $(element).parent().removeClass("state-error").addClass('state-success');
              $(element).addClass('valid');
          },
  rules : {
    fullName : {
      required : true
    },
    email : {
      required : true,
      email : true
    },
    contactNumber : {
      required : true,
    
    },
    password : {
      required : true,
      minlength : 3,
      maxlength : 20
    }, 
    dob : {
      required : true,
    
    }, 
    doh : {
      required : true,
    
    }, 
    licenseNumber : {
      required : true,
    
    }, 
    expiryDate : {
      required : true,
    
    }, 
    emergencyPersonName : {
      required : true,
    
    },
    emergencyPersonNumber : {
      required : true,
    
    }, address : {
      required : true,
    
    },
    latitude : {
      required : true,
    
    },
  longitude : {
      required : true,
    
    }
 

  },
  // Messages for form validation
  messages : {
    fullName : {
      required : 'Please enter your driver name'
    },
    email : {
      required : 'Please enter your email address',
      email : 'Please enter a valid email address'
    },
    contactNumber : {
      required : 'Please enter your contact number'
    },
    password : {
      required : 'Please enter your password'
    },
    dob : {
      required : 'Please enter your date of birth'
    },
    doh : {
      required : 'Please enter your date of hire'
    },
    licenseNumber : {
      required : 'Please enter your driver license number'
    },
    expiryDate : {
      required : 'Please enter your driver license number expiration date'
    }, 
    emergencyPersonName : {
      required : 'Please enter your emergency contact person name'
    },
    emergencyPersonNumber : {
      required : 'Please enter your emergency contact person number'
    },
    address : {
      required : 'Please enter your address'
    }
    
  },
 
  // Do not change code below
  errorPlacement : function(error, element) {
    error.insertAfter(element.parent());
  }
});
// Validation
$(function() {
    
$(document).on('submit', "#driverAddUpdate", function (event) {
    toastr.clear();
    event.preventDefault();
    var formData = new FormData(this);
    $.ajax({
        type: "POST",
        url: base_url+'adminapi/'+$(this).attr('action'),
        headers: { 'authToken': authToken },
        data: formData, //only input
        processData: false,
        contentType: false,
        cache: false,
            beforeSend: function () {
               preLoadshow(true);
            $('#submit').prop('disabled', true);
            },
          success: function (res) {
             preLoadshow(false);
                   setTimeout(function(){  $('#submit').prop('disabled', false); },4000);
                  if(res.status=='success'){
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                  setTimeout(function(){window.location.reload(); },4000);
                   
                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 4000});
                  }
                  
                    
                 }
    });

});
//fromsubmit
});
//customer status      
function driverStatus(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/drivers/driverStatus',
                 data: {use:$(e).data('useid') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                 $('#driver_list').DataTable().ajax.reload();
                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
//driver Delete
function driverDelete(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
     $(e).prop('disabled', true);
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/drivers/driverDelete',
                 data: {use:$(e).data('useid') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                     $(e).prop('disabled', false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                  setTimeout(function(){  window.location = base_url+'drivers'; },3000);

                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
/*******************************************************/
$("#vehicleAddUpdate").validate({// Rules for form validation
   errorClass    : errorClass,
   errorElement  : errorElement,
  highlight: function(element) {
        $(element).parent().removeClass('state-success').addClass("state-error");
        $(element).removeClass('valid');
    },
    unhighlight: function(element) {
        $(element).parent().removeClass("state-error").addClass('state-success');
        $(element).addClass('valid');
    },
  rules : {
    year : {
      required : true
    },
    model : {
      required : true
    },
    plate : {
      required : true
    },
    vin : {
      required : true
    },
    manufacturer : {
      required : true
    },
    color : {
      required : true
    },
     state : {
      required : true
    },
    
  },
  // Messages for form validation
  messages : {
    year : {
      required : 'Please enter vehicle year'
    },
   model : {
      required : 'Please enter vehicle model'
    },
    plate : {
      required : 'Please enter vehicle plate'
    },
    vin : {
      required : 'Please enter vehicle vin'
    }, 
    manufacturer : {
      required : 'Please enter vehicle manufacturer'
    },
   color : {
      required : 'Please enter vehicle color'
    },
   state : {
      required : 'Please enter vehicle state'
    },
  
  },
  // Ajax form submition
  submitHandler : function(form) {
    toastr.clear();
       $('#submit').prop('disabled', true);
      $.ajax({
        type: "POST",
        url: base_url+'adminapi/'+$(form).attr('action'),
        headers: { 'authToken':authToken},
        data: $(form).serialize(),
        cache: false,
        beforeSend: function() {
          preLoadshow(true);
          $('#submit').prop('disabled', true);  
        },     
        success: function (res) {
          preLoadshow(false);
          setTimeout(function(){  $('#submit').prop('disabled', false); },4000);
          if(res.status=='success'){
            toastr.success(res.message, 'Success', {timeOut: 3000});
            setTimeout(function(){window.location.reload(); },4000);
          }else{
            toastr.error(res.message, 'Alert!', {timeOut: 4000});
          }
        }
      });
     return false; // required to block normal submit since you used ajax
  },
  // Do not change code below
  errorPlacement : function(error, element) {
    error.insertAfter(element.parent());
  }
});
/*listing vehilce_list */
var vehilce_list = $('#vehilce_list').DataTable({ 

              "processing": true, //Feature control the processing indicator.
              "serverSide": true, //Feature control DataTables' servermside processing mode.
              "order": [], //Initial no order.
               "lengthChange": false,
              "oLanguage": {
               "sEmptyTable" : '<center>No vehilce found</center>',
                "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               "oLanguage": {
               "sZeroRecords" : '<center>No vehilce found</center>',
                 "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               initComplete: function () {
    $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
    },
             
              // Load data for the table's content from an Ajax source
              "ajax": {
                  "url": base_url+"adminapi/vehicles/vehilceList",
                  "type": "POST",
                  "dataType": "json",
                  "headers": { 'authToken':authToken},
                  "dataSrc": function (jsonData) {
                     
                      return jsonData.data;
                  }
              },
              //Set column definition initialisation properties.
              "columnDefs": [
                  { orderable: false, targets: -1 },
                  
              ]

          });
/*listing vehilce_list*/
function vehilceStatus(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/vehicles/vehilceStatus',
                 data: {use:$(e).data('useid') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                 $('#vehilce_list').DataTable().ajax.reload();
                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
//vehicleDelete Delete
function vehicleDelete(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
     $(e).prop('disabled', true);
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/vehicles/vehicleDelete',
                 data: {use:$(e).data('useid') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                     $(e).prop('disabled', false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                  setTimeout(function(){  window.location = base_url+'vehicles'; },3000);

                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
//Assign Driver
//sign up
$("#vehicleAssignDriver").validate({// Rules for form validation
   errorClass    : errorClass,
   errorElement  : errorElement,
  highlight: function(element) {
        $(element).parent().removeClass('state-success').addClass("state-error");
        $(element).removeClass('valid');
    },
    unhighlight: function(element) {
        $(element).parent().removeClass("state-error").addClass('state-success');
        $(element).addClass('valid');
    },
  rules : {
    driverId : {
      required : true
    },
    
    assignDate : {
      required : true,
    
    }
  },
  // Messages for form validation
  messages : {
    driverId : {
      required : 'Please enter driver'
    },
    assignDate : {
      required : 'Please enter  assign date',
     
    }
  },
  // Ajax form submition
  submitHandler : function(form) {
    toastr.clear();
       //$('#submit').prop('disabled', true);
      $.ajax({
        type: "POST",
        url: base_url+'adminapi/'+$(form).attr('action'),
        headers: { 'authToken':authToken},
        data: $(form).serialize(),
        cache: false,
        beforeSend: function() {
          preLoadshow(true);
          $('#submit').prop('disabled', true);  
        },     
        success: function (res) {
          preLoadshow(false);
          setTimeout(function(){  $('#submit').prop('disabled', false); },4000);
          if(res.status=='success'){
            toastr.success(res.message, 'Success', {timeOut: 3000});
            setTimeout(function(){window.location.reload(); },4000);
          }else{
            toastr.error(res.message, 'Alert!', {timeOut: 4000});
          }
        }
      });
     return false; // required to block normal submit since you used ajax
  },
  // Do not change code below
  errorPlacement : function(error, element) {
    error.insertAfter(element.parent());
  }
});
/// Create job 
function getMsgboundary(){
   var msg= 'Please select geo fencing area';
    toastr.error(msg, 'Alert!', {timeOut: 3000});
  return msg;
}
$("#createJob").validate({// Rules for form validation
   errorClass    : errorClass,
   errorElement  : errorElement,
  highlight: function(element) {
        $(element).parent().removeClass('state-success').addClass("state-error");
        $(element).removeClass('valid');
    },
    unhighlight: function(element) {
        $(element).parent().removeClass("state-error").addClass('state-success');
        $(element).addClass('valid');
    },
  rules : {
    jobName : {
      required : true
    },
    jobTypeId : {
      required : true
    }, 
    driverId : {
      required : true
    },
    customerId : {
      required : true
    }, 
    startDate : {
      required : true
    },
   startTime : {
      required : true
    },
   address : {
      required : true
    },
     boundary: { 
     required: '#geoFencing1[value="1"]:checked'
    }
   

  },
  // Messages for form validation
  messages : {
    jobName : {
      required : 'Please enter your job name'
    },
    jobTypeId : {
      required : 'Please enter your job type',

    },
    driverId : {
      required : 'Please enter your driver name',

    }
    ,customerId : {
      required : 'Please enter your customer name',

    }
    ,startDate : {
      required : 'Please enter your start date',

    }
    ,startTime : {
      required : 'Please enter your start time',

    } 
    ,address : {
      required : 'Please enter your address',

    } ,boundary : {
      
      required: function () {
          toastr.error('Please select geo fencing area', 'Alert!', {timeOut: 3000});
                           
                        },
    }
  },
  // Ajax form submition
  submitHandler : function(form) {
    toastr.clear();
       $('#submit').prop('disabled', true);
      $.ajax({
        type: "POST",
        url: base_url+'adminapi/'+$(form).attr('action'),
        headers: { 'authToken':authToken},
        data: $(form).serialize(),
        cache: false,
        beforeSend: function() {
          preLoadshow(true);
          $('#submit').prop('disabled', true);  
        },     
        success: function (res) {
          preLoadshow(false);
          setTimeout(function(){  $('#submit').prop('disabled', false); },4000);
          if(res.status=='success'){
            toastr.success(res.message, 'Success', {timeOut: 3000});
         //   setTimeout(function(){window.location.reload(); },4000);
            setTimeout(function(){ window.location = base_url+'jobs';; },4000);
          }else{
            toastr.error(res.message, 'Alert!', {timeOut: 4000});
          }
        }
      });
     return false; // required to block normal submit since you used ajax
  },
  // Do not change code below
  errorPlacement : function(error, element) {
    error.insertAfter(element.parent());

  }
});
/*listing job */
var job_list = $('#job_list').DataTable({ 

              "processing": true, //Feature control the processing indicator.
              "serverSide": true, //Feature control DataTables' servermside processing mode.
              "order": [], //Initial no order.
               "lengthChange": false,
              "oLanguage": {
               "sEmptyTable" : '<center>No job found</center>',
                "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               "oLanguage": {
               "sZeroRecords" : '<center>No job found</center>',
                 "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               initComplete: function () {
    $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
    },
             
              // Load data for the table's content from an Ajax source
              "ajax": {
                  "url": base_url+"adminapi/jobs/jobList",
                  "type": "POST",
                  "dataType": "json",
                  "headers": { 'authToken':authToken},
                  "dataSrc": function (jsonData) {
                     
                      return jsonData.data;
                  }
              },
              //Set column definition initialisation properties.
              "columnDefs": [
                  { orderable: false, targets: -1 },
                  
              ]

          });
        /*listing customer_list*/
/*listing job */
var customerjob_list = $('#customnerjobList').DataTable({ 

              "processing": true, //Feature control the processing indicator.
              "serverSide": true, //Feature control DataTables' servermside processing mode.
              "order": [], //Initial no order.
               "lengthChange": false,
              "oLanguage": {
               "sEmptyTable" : '<center>No job found</center>',
                "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               "oLanguage": {
               "sZeroRecords" : '<center>No job found</center>',
                 "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               initComplete: function () {
    $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
    },
             
              // Load data for the table's content from an Ajax source
              "ajax": {
                  "url": base_url+"adminapi/jobs/customnerjobList",
                  "type": "POST",
                  "dataType": "json",
                  "headers": { 'authToken':authToken},
                  "data": { 'id':$('#customnerjobList').data('id')},
                  "dataSrc": function (jsonData) {
                     
                      return jsonData.data;
                  }
              },
              //Set column definition initialisation properties.
              "columnDefs": [
                  { orderable: false, targets: -1 },
                  
              ]

});
        /*listing customer_list*/

var driverjobList = $('#driverjobList').DataTable({ 

              "processing": true, //Feature control the processing indicator.
              "serverSide": true, //Feature control DataTables' servermside processing mode.
              "order": [], //Initial no order.
               "lengthChange": false,
              "oLanguage": {
               "sEmptyTable" : '<center>No job found</center>',
                "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               "oLanguage": {
               "sZeroRecords" : '<center>No job found</center>',
                 "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               initComplete: function () {
    $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
    },
             
              // Load data for the table's content from an Ajax source
              "ajax": {
                  "url": base_url+"adminapi/jobs/driverjobList",
                  "type": "POST",
                  "dataType": "json",
                  "headers": { 'authToken':authToken},
                  "data": { 'id':$('#driverjobList').data('id')},
                  "dataSrc": function (jsonData) {
                     
                      return jsonData.data;
                  }
              },
              //Set column definition initialisation properties.
              "columnDefs": [
                  { orderable: false, targets: -1 },
                  
              ]

});
        /*listing customer_list*/
//job status      
function jobStatus(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/jobs/jobStatus',
                 data: {use:$(e).data('useid'), status:$(e).data('status') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                  setTimeout(function(){window.location.reload(); },2000);
                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
//job status      
function jobDelete(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/jobs/jobDelete',
                 data: {use:$(e).data('useid')},
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                 setTimeout(function(){  window.location = base_url+'jobs'; },3000);
                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
//driver Add
    
$("#addHistoryA").validate({// Rules for form validation
    errorClass    : errorClass,
        errorElement  : errorElement,
        highlight: function(element) {
              $(element).parent().removeClass('state-success').addClass("state-error");
              $(element).removeClass('valid');
          },
          unhighlight: function(element) {
              $(element).parent().removeClass("state-error").addClass('state-success');
              $(element).addClass('valid');
          },
  rules : {
    date : {
      required : true
    },
    type : {
      required : true
    },
    attachment : {
      required : true
    
    }
  },
  // Messages for form validation
  messages : {
    type : {
      required : 'Please enter your type'
    },
   date : {
      required : 'Please enter your date'
    },
   attachment : {
      required : 'Please enter your attachment'
    } 
  },
 
  // Do not change code below
  errorPlacement : function(error, element) {
    error.insertAfter(element.parent());
  }
});
$(function() {
    
$(document).on('submit', "#addHistoryA", function (event) {
    toastr.clear();
    event.preventDefault();
    var formData = new FormData(this);
    $.ajax({
        type: "POST",
        url: base_url+'adminapi/'+$(this).attr('action'),
        headers: { 'authToken': authToken },
        data: formData, //only input
        processData: false,
        contentType: false,
        cache: false,
            beforeSend: function () {
               preLoadshow(true);
            $('#submiH').prop('disabled', true);
            },
          success: function (res) {
             preLoadshow(false);
                   setTimeout(function(){  $('#submitH').prop('disabled', false); },4000);
                  if(res.status=='success'){
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                  setTimeout(function(){window.location.reload(); },4000);
                   
                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 4000});
                  }
                  
                    
                 }
    });

});
//fromsubmit
});
/*listing vehilceHistory_list */
var vehilce_list = $('#vehilceHistory_list').DataTable({ 

              "processing": true, //Feature control the processing indicator.
              "serverSide": true, //Feature control DataTables' servermside processing mode.
              "order": [], //Initial no order.
               "lengthChange": false,
              "oLanguage": {
               "sEmptyTable" : '<center>No history found</center>',
                "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               "oLanguage": {
               "sZeroRecords" : '<center>No history found</center>',
                 "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               initComplete: function () {
    $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
    },
             
              // Load data for the table's content from an Ajax source
              "ajax": {
                  "url": base_url+"adminapi/vehicles/vehilceHistoryList",
                  "type": "POST",
                  "dataType": "json",
                  //"data" : {vid: $('#v_detail').data('vid')}.
                   "data": { 'vid':$('#v_detail').data('vid')},
                  "headers": { 'authToken':authToken},
                  "dataSrc": function (jsonData) {
                     
                      return jsonData.data;
                  }
              },
              //Set column definition initialisation properties.
              "columnDefs": [
                  { orderable: false, targets: -1 },
                  
              ]

          });
/*listing vehilceHistory_list*/
//vehilceHistoryDelete Delete
function vehilceHistoryDelete(e){
  swal({
  title: "Are you sure?",
  text:  $(e).data('message'),
  type: "warning",
  showCancelButton: true,
  confirmButtonClass: "btn-danger",
  confirmButtonText: "Yes",
  cancelButtonText: "No",
  closeOnConfirm: true,
  closeOnCancel: true,
 // showLoaderOnConfirm: true
},
function(isConfirm) {
  if (isConfirm) {
     $(e).prop('disabled', true);
    /*ajax*/
    $.ajax({
                 type: "POST",
                 url: base_url+'adminapi/vehicles/vehilceHistoryDelete',
                 data: {use:$(e).data('vhid') },
                 headers: { 'authToken':authToken},
                  cache: false,
           beforeSend: function() {
          
               preLoadshow(true);
                  },     
                 success: function (res) {
                   preLoadshow(false);
                     $(e).prop('disabled', false);
                  if(res.status=='success'){
                   
                   toastr.success(res.message, 'Success', {timeOut: 3000});
                 //  swal("Success", "Your process  has been successfully done.", "success");
                 setTimeout(function(){window.location.reload(); },3000);

                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                  }
                  
                     
                 }
             });
    /*ajax*/
   
  } else {
    //swal("Cancelled", "Your Process has been Cancelled", "error");
  }
});
}
/*histroy update*/
function openHistory(){
  $('#addHistoryA').trigger("reset");
$('#addHistoryA select').trigger("change");
 $('#privew + embed').remove();
        $('#privew + img').remove();
        $('#privew').after('');
         $('#vhtype option[value=0]').attr('selected','selected');
  $('#historyId').val(0);
  $('#hvehicleId').val($('#v_detail').data('vid'));
   $('#addHistory').modal('show');
}
function editHistory(e){
    var historyId = $(e).data('hid');
    var vjobTypeId = $(e).data('typeid');
    var date = $(e).data('dateid');
    var attachment = $(e).data('attachmentid');
    var filetype = $(e).data('filetypeid');
    //alert(historyId+' '+date+' '+filetype+' '+attachment);

     $('#vhtype option[value='+vjobTypeId+']').attr('selected','selected');
     $('#hdate').val(date);
     $('#hAttachment').val(attachment);
     $('#historyId').val(historyId);
    $('#privew + embed').remove();
    $('#privew + img').remove();
    $('#privew').after('');
    if(filetype=='image'){
      $('#privew').after('<img src="'+attachment+'" width="400" height="300">');
    }else{
      $('#privew').after('<img src="'+base_url+'backend_assets/img/attachment/attachment.jpeg" width="400" height="300">');
    }
    
    $('#addHistory').modal('show');
   
}//end function