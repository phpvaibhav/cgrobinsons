<!-- widget grid -->
  <style type="text/css">
  #map {
  width: auto;
  height:500px;
}
 #color-palette {
        clear: both;
      }

      .color-button {
        width: 14px;
        height: 14px;
        font-size: 0;
        margin: 2px;
        float: left;
        cursor: pointer;
      }

</style>
<?php $backend_assets=base_url().'backend_assets/';?>
<?php 
	$pointsArray = array();
	if($job['points']):
	  $pointsArray= array_values(array_filter(explode("|",$job['points'])));
	endif;
	$p = array();
	for ($i=0; $i < sizeof($pointsArray) ; $i++) { 
		$pp = explode(",",$pointsArray[$i]);
		 $p[$i]['lat'] = $pp[0];
		 $p[$i]['lng'] = $pp[1];
	}
	$ppp= json_encode($p);
	$polygonColor =!empty($job['polygonColor']) ?$job['polygonColor']:"#1E90FF";
?>
<section id="widget-grid" class="">     
  	<!-- row -->
    <div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
			<div class="well no-padding">

				<form action="jobs/createJob" id="createJob" class="smart-form" novalidate="novalidate" autocomplete="off" enctype="multipart/form-data">
					<header>
						Basic Information
					</header>

					<fieldset>
						<div class="row">
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-bookmark"></i>
									<input type="text" name="jobName" placeholder="Job Name" value="<?php echo $job['jobName']; ?>" maxlength="30" size="30">
									<input type="hidden" name="jobId" value="<?php echo encoding($job['jobId']); ?>" >
								</label>
							</section>
							<section class="col col-6">
							    <label class="select">
							        <select name="jobTypeId">
							            <option value="" selected="" disabled="">Job Type</option>
							            <?php foreach ($jobTypes as $jt => $type) {?>
							            <option value="<?php echo $type->jobTypeId; ?>" selected="<?= $job['jobName']==$type->jobTypeId ?'selected':'';  ?>"><?php echo $type->jobType; ?></option>
							        	<?php } ?>
							           
							        </select> <i></i> </label>
							</section>
						</div>
						<div class="row">
							<section class="col col-6">
							
							<select style="width:100%;" class="select2" name="driverId" data-placeholder="Please select a driver">
									<optgroup label="">
									<option></option>
									<?php foreach ($drivers as $k => $driver) {?>
									<option value="<?php echo $driver->id; ?>" selected="<?= $job['driverId']==$driver->id ?'selected':'';  ?>"><?php echo $driver->fullName; ?></option>
									<?php }?>
									</optgroup>
								</select>
							</section>
							<section class="col col-6">
								<select style="width:100%;" class="select2" name="customerId" data-placeholder="Please select a customer">
									<optgroup label="">
									<option></option>
									<?php foreach ($customers as $c => $customer) {?>
									<option value="<?php echo $customer->id; ?>" selected="<?= $job['customerId']==$customer->id ?'selected':'';  ?>"><?php echo $customer->fullName; ?></option>
									<?php }?>
									</optgroup>
								</select>
							</section>
						</div>
						<div class="row">
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-calendar"></i>
									<input type="text" name="startDate" placeholder="Start Date" class="datepicker" data-dateformat='dd-mm-yy' value="<?php echo date('d-m-Y',strtotime($job['startDate'])); ?>" readonly="">
								</label>
							</section>
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-clock-o"></i>
									<input type="text" name="startTime" placeholder="Start Time"  value="<?php echo$job['startTime']; ?>" id="timepicker" class="" readonly="">
								</label>
							</section>
						</div>
					</fieldset>
					<header>
						Address
					</header>

					<fieldset>
						<div class="row">
							<section class="col col-md-12">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
									<input type="text" name="address" placeholder="Address" id="autocomplete0" class="mapautocomplete" data-id="0" maxlength="300" size="300" value="<?php echo $job['address']; ?>">
									<input type="hidden" class="latitudeautocomplete0" name="latitude" placeholder="latitude" value="<?php echo $job['latitude']; ?>">
									<input type="hidden" class="longitudeautocomplete0" name="longitude" placeholder="longitude" value="<?php echo $job['longitude']; ?>">
								</label>
							</section>
						</div>
						<div class="row">
							<section class="col col-3">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
									<input type="text" name="street" placeholder="Street" class="street_numberautocomplete0" maxlength="20" value="<?php echo $job['street']; ?>" size="20">
								</label>
							</section>
							<section class="col col-9">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
								<input type="text" name="street2" placeholder="Street Second" class="routeautocomplete0" maxlength="30" size="30" value="<?php echo $job['street2']; ?>">
								</label>
							</section>
						</div>
						<div class="row">
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
									<input type="text" name="city" placeholder="City" class="localityautocomplete0" maxlength="30" size="30" value="<?php echo $job['city']; ?>">
								</label>
							</section>
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
								<input type="text" name="state" placeholder="State" class="administrative_area_level_1autocomplete0" maxlength="30" size="30" value="<?php echo $job['state']; ?>">
								</label>
							</section>
						</div>
						<div class="row">
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
									<input type="text" name="zip" placeholder="Zip Code" class="postal_codeautocomplete0 number-only1" value="<?php echo $job['zip']; ?>" maxlength="15" size="15">
								</label>
							</section>
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
								<input type="text" name="country" placeholder="Country" class="countryautocomplete0" maxlength="15" size="15" value="<?php echo $job['country']; ?>">
								</label>
							</section>
						</div>
						<div class="row">
							<section class="col col-md-12">
								<label class="label">Geo Fencing</label>
								<div class="inline-group">
									<label class="radio">
										<input type="radio" name="geoFencing" <?php echo $job['geoFencing']==1 ? "checked='checked'":""; ?> value="1" id="geoFencing1">
									<i></i>YES</label>
									<label class="radio">
										<input type="radio" name="geoFencing" id="geoFencing0" value="0" <?php echo $job['geoFencing']==0 ? "checked='checked'":""; ?>>
									<i></i>NO</label>
								</div>
							</section>
						</div>
						<section class="col col-md-12 boxshow">

							<div class="row">
								<div class="col-md-6">
								<div class="form-group">
								<p>Polygon Color</p>
								<div id="color-palette"></div>
								</div>
								</div>
								<div class="col-md-6 text-right">
								<a href="javascript:void(0);" type="button" class="btn hide" id="delete-button">Reset</a>

								<button type="button" class="btn btn-warnig hide" id="delete-all-button">Delete</button>


								</div>
								<!-- map -->
								<!-- map -->
							</div>
							
						<div class="row" id="html-content-holder">
							<div id="map-canvas"></div>
							<div id="map"></div>
						</div>
						 <input type="hidden" name="polygonColor" id="polygonColor" value="<?php echo $job['polygonColor']; ?>" >
					  	<textarea  name="boundary" id="boundary" class="hide" ><?php echo $job['points']; ?></textarea>
						</section>
						
					</fieldset>
					
					<footer>
						<button type="submit" id="submit" class="btn btn-primary">
							Edit Job
						</button>
					</footer>
				</form>
			</div>	
		</div>
	</div>     
  	<!-- end row -->
</section>
<!-- end widget grid -->

<script type="text/javascript">
	var geoFencing = "<?php echo $job['geoFencing']; ?>";
	if(geoFencing==1){
	  $(".boxshow").show();
	}else{
		 $(".boxshow").hide();
	}
</script>
<script type="text/javascript">
	var componentForm = {
      street_number: 'short_name',
      route: 'long_name',
      locality: 'long_name',
      administrative_area_level_1: 'short_name',
      country: 'long_name',
      postal_code: 'short_name'
    };
var geocoder;
var map;

var marker;
var polygonArray = [];
var polygonColor ="<php echo $polygonColor; ?>";
var latitude =  parseFloat("<?php echo (isset($job['latitude']) && !empty($job['latitude'])) ? $job['latitude']:51.509865; ?>");
var longitude = parseFloat("<?php echo (isset($job['longitude']) && !empty($job['longitude'])) ?$job['longitude']:-0.118092; ?>");
//var myPolygon;
function initMap() {
  // Map Center
  var myLatLng = new google.maps.LatLng(latitude,longitude);
  // General Options
  var mapOptions = {
    zoom: 10,
    center: myLatLng,
    mapTypeId: google.maps.MapTypeId.RoadMap
  };
  var map = new google.maps.Map(document.getElementById('map'),mapOptions);

  // Polygon Coordinates
/* var triangleCoords = [

    new google.maps.LatLng(22.425279,75.711479),
    new google.maps.LatLng(22.426231,75.807953),
    new google.maps.LatLng(22.371952,75.735855),
    new google.maps.LatLng(22.390682,75.625305),
  ];*/
  var f ='<?php echo $ppp; ?>';
  var triangleCoords =jQuery.parseJSON(f) ;
  var data =[];
  $.each(triangleCoords, function( index, value ) {
  data.push( new google.maps.LatLng(value.lat,value.lng)); 
  });
  console.log(data);
  
 
  // Styling & Controls
  myPolygon = new google.maps.Polygon({
    paths: data,
    draggable: true, // turn off if it gets annoying
    editable: true,
    geodesic: true,
    strokeColor: polygonColor,
    strokeOpacity: 0.8,
    strokeWeight: 2,
    fillColor: polygonColor,
    fillOpacity: 0.35
  });
    myPolygon.setMap(map);
 // addMarker(myLatLng,'<?php echo $job['address']; ?>');
	marker = new google.maps.Marker({
    position: {lat: latitude, lng: longitude },
    title: "<?php echo $job['address']; ?>",
   // map: map
  });
	marker.setMap(map);

  google.maps.event.addListener(myPolygon, "dragend", getPolygonCoords1);
  google.maps.event.addListener(myPolygon.getPath(), "insert_at", getPolygonCoords);
  //google.maps.event.addListener(myPolygon.getPath(), "remove_at", getPolygonCoords);
  google.maps.event.addListener(myPolygon.getPath(), "set_at", getPolygonCoords);
  /*Address*/
  var acInputs = document.getElementsByClassName("mapautocomplete");
for (var i = 0; i < acInputs.length; i++) {
 
        var autocomplete = new google.maps.places.Autocomplete(acInputs[i]);

        autocomplete.inputId = acInputs[i].id;
        google.maps.event.addListener(autocomplete, 'place_changed', function () {
        	 var place   = this.getPlace();
          var aId      = this.inputId
        	 if (!place.geometry) {
             
              window.alert("No details available for input: '" + place.name + "'");
              return;
            }
            var latitude  = place.geometry.location.lat();
            var longitude = place.geometry.location.lng();
            $('.latitude'+aId).val(latitude);
            $('.longitude'+aId).val(longitude);
       
			var LatLng = new google.maps.LatLng(latitude,longitude);
			map.setCenter(LatLng);
			marker.setMap(null);
			marker = new google.maps.Marker({
				position: {lat: latitude, lng: longitude },
				title: place.formatted_address,
				//map: map
			});
			
			marker.setMap(map);
     


        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var j = 0; j < place.address_components.length; j++) {
          var addressType = place.address_components[j].types[0];
          if (componentForm[addressType]) {
            var val = place.address_components[j][componentForm[addressType]];
                 $('.'+addressType+aId).val(val);
          }
        }
        });
    }
  /*Address*/
}

function getPolygonCoords() {
  var len = myPolygon.getPath().getLength();
  var htmlStr = "";
  for (var i = 0; i < len; i++) {
  /*  htmlStr += "new google.maps.LatLng(" + myPolygon.getPath().getAt(i).toUrlValue(5) + "), ";*/
  htmlStr += myPolygon.getPath().getAt(i).toUrlValue(6)+"|";
    //Use this one instead if you want to get rid of the wrap > new google.maps.LatLng(),
    //htmlStr += "" + myPolygon.getPath().getAt(i).toUrlValue(5);
  }
  document.getElementById('boundary').innerHTML = htmlStr;
  // inside();
}
function getPolygonCoords1() {
	 //inside();
}
function copyToClipboard(text) {
  window.prompt("Copy to clipboard: Ctrl+C, Enter", text);
}
 // Adds a marker to the map and push to the array.
      function addMarker(location,formatted_address) {
        var marker = new google.maps.Marker({
          position: location,
           title: formatted_address,
          map: map
        });
        markers.push(marker);
      }

      // Sets the map on all markers in the array.
      function setMapOnAll(map) {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(map);
        }
      }

      // Removes the markers from the map, but keeps them in the array.
      function clearMarkers() {
        setMapOnAll(null);
      }
google.maps.event.addDomListener(window, 'load', initMap);
</script>