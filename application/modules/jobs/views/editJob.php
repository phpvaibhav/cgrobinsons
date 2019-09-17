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
<?php $backend_assets=base_url().'backend_assets/';
/*	echo "<pre>";
	print_r($job);
	echo "</pre>";*/

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
									<input type="text" name="address" placeholder="Address" id="autocomplete0" class="autocomplete" data-id="0" maxlength="300" size="300">
									<input type="hidden" class="latitudeautocomplete0" name="latitude" placeholder="latitude">
									<input type="hidden" class="longitudeautocomplete0" name="longitude" placeholder="longitude">
								</label>
							</section>
						</div>
						<div class="row">
							<section class="col col-3">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
									<input type="text" name="street" placeholder="Street" class="street_numberautocomplete0" maxlength="20" size="20">
								</label>
							</section>
							<section class="col col-9">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
								<input type="text" name="street2" placeholder="Street Second" class="routeautocomplete0" maxlength="30" size="30">
								</label>
							</section>
						</div>
						<div class="row">
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
									<input type="text" name="city" placeholder="City" class="localityautocomplete0" maxlength="30" size="30">
								</label>
							</section>
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
								<input type="text" name="state" placeholder="State" class="administrative_area_level_1autocomplete0" maxlength="30" size="30">
								</label>
							</section>
						</div>
						<div class="row">
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
									<input type="text" name="zip" placeholder="Zip Code" class="postal_codeautocomplete0 number-only1" maxlength="15" size="15">
								</label>
							</section>
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
								<input type="text" name="country" placeholder="Country" class="countryautocomplete0" maxlength="15" size="15">
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
								<a href="javascript:void(0);" type="button" class="btn" id="delete-button">Reset</a>

								<button type="button" class="btn btn-warnig hide" id="delete-all-button">Delete</button>


								</div>
								<!-- map -->
								<!-- map -->
							</div>
							
						<div class="row" id="html-content-holder">
							<div id="map-canvas"></div>
							<div id="map"></div>
						</div>
						 <input type="hidden" name="polygonColor" id="polygonColor" value="#1E90FF">
					  	<textarea  name="boundary" id="boundary" class="hide"></textarea>
						</section>
						
					</fieldset>
					
					<footer>
						<button type="submit" id="submit" class="btn btn-primary">
							Add Job
						</button>
					</footer>
				</form>
			</div>	
		</div>
	</div>     
  	<!-- end row -->
</section>
<!-- end widget grid -->
 <script src="<?php echo $backend_assets; ?>custom/js/polygon.js"></script>
<script type="text/javascript">
	var geoFencing = "<?php echo $job['geoFencing']; ?>";
	if(geoFencing==1){
	  $(".boxshow").show();
	}else{
		 $(".boxshow").hide();
	}
</script>