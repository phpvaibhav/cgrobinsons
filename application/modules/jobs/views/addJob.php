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
 <?php $backend_assets=base_url().'backend_assets/'; ?>
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
									<input type="text" name="jobName" placeholder="Job Name" maxlength="30" size="30">
								</label>
							</section>
							<section class="col col-6">
							    <label class="select">
							        <select name="jobTypeId" onchange="getQuestions(this);">
							            <option value="" selected="" disabled="">Job Type</option>
							            <?php foreach ($jobTypes as $jt => $type) {?>
							            <option value="<?php echo $type->jobTypeId; ?>"><?php echo $type->jobType; ?></option>
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
									<option value="<?php echo $driver->id; ?>"><?php echo $driver->fullName; ?></option>
									<?php }?>
									</optgroup>
								</select>
							</section>
							<section class="col col-6">
								<select style="width:100%;" class="select2" name="customerId" data-placeholder="Please select a customer" onchange="getPrevious(this);">
									<optgroup label="">
									<option></option>
									<?php foreach ($customers as $c => $customer) {?>
									<option value="<?php echo $customer->id; ?>"><?php echo $customer->fullName; ?></option>
									<?php }?>
									</optgroup>
								</select>
							</section>
						</div>
						<div class="row">
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-calendar"></i>
									<input type="text" name="startDate" placeholder="Creation Date" class="datepicker" data-dateformat='dd-mm-yy' readonly="">
								</label>
							</section>
							<section class="col col-6">
								<label class="input"> <i class="icon-append fa fa-clock-o"></i>
									<input type="text" name="startTime" placeholder="Creation Time" id="timepicker" class="" readonly="">
								</label>
							</section>
						</div>
						
						
					
					</fieldset>
					<header class="queDataHideShow">
						<label class="checkbox state-error"><input type="checkbox" id="select_questionAll"  value="1" name="checkbox"><i></i> <strong> Job Type Questions</strong></label>
					</header>
					<fieldset class="queDataHideShow">	
							<section id="showQue">						
							</section>		
					</fieldset>
					<header>
						Address <span class="getAddressshow  pull-right"><a class="btn btn-primary btn-sm" href="javascript:void(0);" data-toggle="modal" data-target="#setAddress">Previous Address</a></span>
					</header>
					<fieldset>
						<div class="row">
							<section class="col col-md-12">
								<label class="input"> <i class="icon-append fa fa-map-marker"></i>
									<input type="text" name="address" placeholder="Address" id="autocomplete0" class="mapautocomplete" data-id="0" maxlength="300" size="300">
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
										<input type="radio" name="geoFencing" checked="checked" value="1" id="geoFencing1">
									<i></i>YES</label>
									<label class="radio">
										<input type="radio" name="geoFencing" id="geoFencing0" value="0">
									<i></i>NO</label>
								</div>
							</section>
						</div>
						<section class="col col-md-12 boxshow" >
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
<!-- Modal -->
<div class="modal fade" id="setAddress" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					Previous Addresses
				</h4>
			</div>
			<div class="modal-body">
	        
				<!-- widget content -->
				<div class="widget-body padding">
					<fieldset>
						<div class="row" >
							<div class="col-sm-12 col-md-12" id="previousAddress" style="height: 400px;overflow: auto;"></div>

						</div>
						<footer>
							<button type="button" class="btn btn-primary pull-right setGeoloc">
								Apply
							</button>
						</footer>
					</fieldset>

				</div>
				<!-- end widget content -->
	         
	        </div>
		</div>
	</div>
</div>
<!-- End modal -->
<script type="text/javascript">
	var question ="";
	var pendingJob ="0";
</script>
<script src="<?php echo $backend_assets; ?>custom/js/polygon.js"></script>

