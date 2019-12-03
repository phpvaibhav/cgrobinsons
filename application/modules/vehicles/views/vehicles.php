<style>
	#map-show {
		width: auto;
		height: 500px;
	}
</style>
<section id="widget-grid" class="">
	<!-- row -->
	<div class="row">
		<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<!-- Widget ID (each widget will need unique ID)-->
			<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false" data-widget-editbutton="false" data-widget-deletebutton="false">
				<!-- widget options:
				usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				data-widget-colorbutton="false"
				data-widget-editbutton="false"
				data-widget-togglebutton="false"
				data-widget-deletebutton="false"
				data-widget-fullscreenbutton="false"
				data-widget-custombutton="false"
				data-widget-collapsed="true"
				data-widget-sortable="false"
				-->
				<header>
					<span class="widget-icon"> <i class="fa fa-taxi"></i> </span>
					<h2>Vehicles</h2>
				</header>
				<!-- widget div-->
				<div>
					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->
					</div>
					<!-- end widget edit box -->
					<!-- widget content -->
					<div class="widget-body padding">
						<table id="vehilce_list" class="table table-striped table-bordered table-hover" width="100%">
							<thead>			                
								<tr>
									<th data-hide="phone">ID</th>
									<th data-hide="phone">Year</th>
									<th data-hide="phone,tablet">Manufacturer</th>
									<th data-hide="phone,tablet">Model</th>
									<th data-hide="phone,tablet">Vin</th>
									<th data-hide="phone,tablet">Plate</th>
									<th data-hide="phone,tablet">Color</th>
									<th data-hide="phone,tablet">State</th>
									<th data-hide="phone,tablet">Assign Driver</th>
									<th data-hide="phone,tablet">Status</th>
									<th data-hide="phone,tablet">Action</th>
								</tr>
							</thead>
							<tbody>			
							</tbody>
						</table>
					</div>
					<!-- end widget content -->
				</div>
				<!-- end widget div -->
			</div>
			<!-- end widget -->
		</article>
		<!-- WIDGET END -->
	</div>
	<!-- end row -->
	<!-- row -->
	<div class="row">
		<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<!-- Widget ID (each widget will need unique ID)-->
			<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false" data-widget-editbutton="false" data-widget-deletebutton="false">
				<!-- widget options:
				usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				data-widget-colorbutton="false"
				data-widget-editbutton="false"
				data-widget-togglebutton="false"
				data-widget-deletebutton="false"
				data-widget-fullscreenbutton="false"
				data-widget-custombutton="false"
				data-widget-collapsed="true"
				data-widget-sortable="false"
				-->
				<header>
					<span class="widget-icon"> <i class="fa fa-map"></i> </span>
					<h2>Route Map </h2>
				</header>
				<!-- widget div-->
				<div>
					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->
					</div>
					<!-- end widget edit box -->
					<!-- widget content -->
					<div class="widget-body padding">
						<div class="row">
							<div class="col-md-12 col-sm-12">
								<div id="map-show"></div>
							</div>
							<div class="col-md-12 col-sm-12 hide">
									<button id="add-markers">Add markers</button>
									<button id="remove-markers">Remove markers</button>
							</div>
						</div>
					</div>
					<!-- end widget content -->
				</div>
				<!-- end widget div -->
			</div>
			<!-- end widget -->
		</article>
		<!-- WIDGET END -->
	</div>
	<!-- end row -->
</section>
<!-- end widget grid -->
<!-- Modal -->
<div class="modal fade" id="addVehicle" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					New Vehicle
				</h4>
			</div>
			<div class="modal-body">
				<!-- Add CUstomer -->
				<!-- widget content -->
				<div class="widget-body no-padding">				
					<form action="vehicles/addVehicle" id="vehicleAddUpdate" class="smart-form" novalidate="novalidate" autocomplete="off" enctype="multipart/form-data">
						<fieldset>
							<div class="row">
								<section class="col col-6">
									<label class="input"> <i class="icon-append fa fa-list-alt"></i>
										<input type="text"  name="year" placeholder="Year" data-mask="2099">
									</label>
								</section>
								<section class="col col-6">
									<label class="input"> <i class="icon-append fa fa-list-alt"></i>
										<input type="text"  name="model" placeholder="Model">
									</label>
								</section>
							</div>
							<div class="row">				
								<section class="col col-6">
									<label class="input"> <i class="icon-append fa fa-list-alt"></i>
										<input type="text"  name="plate" placeholder="Plate">
									</label>
								</section>
								<section class="col col-6">
									<label class="input"> <i class="icon-append fa fa-list-alt"></i>
										<input type="text"  name="vin" placeholder="Vin">
									</label>
								</section>
							</div>
							<div class="row">
								<section class="col col-md-12">
								    <label class="select">
								        <select name="manufacturer">
								            <option value="0" selected="" disabled="">Manufacturer</option>
								            <?php foreach ($manufacturers as $m => $manu) {?>
									            <option value="<?php echo $manu->title; ?>"><?php echo $manu->title; ?></option>
								        	<?php } ?>
												           
								        </select> <i></i> 
								    </label>
								</section>
							</div>
							<div class="row">
								<section class="col col-6">
							    	<label class="select">
								        <select name="color">
								            <option value="0" selected="" disabled="">Colors</option>
								            <?php foreach ($vehicleColors as $vc => $color) {?>
								            <option value="<?php echo $color->color; ?>"><?php echo $color->color; ?></option>
								        	<?php } ?>	           
								        </select> <i></i> 
								    </label>
								</section>
								<section class="col col-6">
							    	<label class="select">
								        <select name="state">
								            <option value="0" selected="" disabled="">States</option>
								            <?php foreach ($states as $s => $state) {?>
								            <option value="<?php echo $state->stateName; ?>"><?php echo $state->stateName; ?></option>
								        	<?php } ?>	           
								        </select> <i></i>	
								    </label>
								</section>
							</div>
						</fieldset>
						<footer>
							<button type="submit" id="submit" class="btn btn-primary">
								Add Vehicle
							</button>
						</footer>
					</form>
				</div>
				<!-- end widget content -->
				<!-- Add CUstomer -->
	        </div>
		</div>
	</div>
</div>
<!-- End modal -->
 <script type="text/javascript">
	var base_url 		= $('body').data('base-url'); // Base url
	var authToken 		= $('body').data('auth-url'); // Base url
	var map;
	var markers 		= [];

	//var GREEN_MARKER 	= base_url+'backend_assets/img/output-onlinepngtools.png';
	var GREEN_MARKER 	= base_url+'backend_assets/img/pinset.png';
	var areaLatitude 	=  parseFloat('<?= isset($locations[0]->latitude) ? $locations[0]->latitude :22.71956800; ?>');
	var areaLongitude 	= parseFloat('<?= isset($locations[0]->longitude) ? $locations[0]->longitude:75.857727; ?>') ;
	

	
	function initMap() {
		// Map Center
		var myLatLng 	= new google.maps.LatLng(areaLatitude,areaLongitude);
		// General Options
		var mapOptions 	= {
				zoom 		: 15,
				center 		: myLatLng,
				mapTypeId 	: google.maps.MapTypeId.RoadMap
			};
		var map 		= new google.maps.Map(document.getElementById('map-show'),mapOptions);
		/*num_markers*/
		google.maps.event.addDomListener(document.getElementById('add-markers'), 'click', function(event) {
			addMarkers(map);
		});
		google.maps.event.addDomListener(document.getElementById('remove-markers'), 'click', removeMarkers);
	}
	function addMarkers(map) {
		$.ajax({
			type: "POST",
	              url 		: base_url+'adminapi/vehicles/vehilceLatlong',
	              data 		: {use:1},
	              headers 	: { 'authToken':authToken},
	              cache		: false,
	              beforeSend: function() {
	               
	              }, 
	              success	: function (res) {
	              	if(res.status=='success'){
	              		$( "#remove-markers" ).trigger( "click" ); 
	                	console.log(res.data);
	                	var locations 	= res.data;
	                	var num_markers = res.data.length;
	                	//alert(num_markers);
	                	/*map marker*/
	                	if(num_markers !=0){
                	 		var bounds = new google.maps.LatLngBounds();
	                	  	for (var i = 0; i < num_markers; i++) {  
								markers[i] = new google.maps.Marker({
									position 	: {lat:parseFloat(locations[i].latitude), lng:parseFloat(locations[i].longitude)},
									map 		: map,
									html 		: parseFloat(locations[i].latitude),
									title 		: 'Driver :'+locations[i].fullName,
									icon 		: GREEN_MARKER,
									id 			: i,
									animation: google.maps.Animation.DROP,
								});
				  				bounds.extend(markers[i].getPosition());
				  				var content = '<p><b>Basic Information:</b><hr></p><p><b>Vehicle :</b> <a href="'+base_url+locations[i].vehicleLink+'" target="_blank" >'+locations[i].manufacturer+' '+locations[i].year+' '+locations[i].vin+' '+locations[i].model+' '+locations[i].plate+'</a><br>'+'<b>Driver : <a href="'+base_url+locations[i].driverLink+'" target="_blank" > '+locations[i].fullName+'</a></b><hr></p><p><strong>Assign Job :</strong><hr></p><p>';
				  				var job = locations[i].assignJob;
				  				if(job.length==0){
				  					content += '<span class="text-center">No assign job found.</span>';
				  				}else{
				  				for (var j = 0; j < job.length; j++) { 

				  					content += (j+1)+': <b><a href="'+job[j].jobLink+'" target="_blank" >'+job[j].jobName+'</a> <span class="pull-right txt-color-'+job[j].statusColor+'" >('+job[j].statusShow+')</span></b><br>';
				  				}
				  				}
				  				content +='</p>';
								// process multiple info windows
								markers[i].info = new google.maps.InfoWindow({
								content 	: content
									
								});
								google.maps.event.addListener(markers[i], 'click', function() {  
									// this = marker
									var marker_map = this.getMap();
									this.info.open(marker_map, this);
								});
							}
	              			map.fitBounds(bounds);  	
	                		/*map marker*/
	              		}
	                }
              	}    
			});
	}

	function removeMarkers() {
	    for (var i = 0; i < markers.length; i++) {
	        markers[i].setMap(null);
	    }
	}
	$(document).ready(function() {
		google.maps.event.addDomListener(window, 'load', initMap);
		//$( "#add-markers" ).trigger( "click" );
		setTimeout(function(){ $( "#add-markers" ).trigger( "click" ); }, 1000);
		setInterval(function(){$( "#add-markers" ).trigger( "click" ); }, 60000);
	});
	//$( "#remove-markers" ).trigger( "click" ); 
</script>