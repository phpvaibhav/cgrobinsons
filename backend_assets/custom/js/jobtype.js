/*listing job */
var jobtype_list = $('#jobtype_list').DataTable({ 

              "processing": true, //Feature control the processing indicator.
              "serverSide": true, //Feature control DataTables' servermside processing mode.
              "order": [], //Initial no order.
               "lengthChange": false,
              "oLanguage": {
               "sEmptyTable" : '<center>No job type found</center>',
                "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               "oLanguage": {
               "sZeroRecords" : '<center>No job type found</center>',
                 "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
              },
               initComplete: function () {
    $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
    },
             
              // Load data for the table's content from an Ajax source
              "ajax": {
                  "url": base_url+"adminapi/jobtype/jobtypeList",
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
//job status      
function jobTypeStatus(e){
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
                 url: base_url+'adminapi/jobtype/jobTypeStatus',
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