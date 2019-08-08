<?php $backend_assets=base_url().'backend_assets/'; ?>
<div class="row">
	<div class="col-sm-12">
		<div class="well well-sm">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-6">
					<div class="well well-light well-sm margin padding">
						
						<div class="timeline-seperator text-center"></div>
						<header>
							<h5>Basic Information</h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						<br>
						<fieldset>
							<ul class="list-unstyled">
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['jobName']; ?></span>	<strong> Job Name</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['jobType']; ?></span>	<strong> Job Type</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['customerName']; ?></span>	<strong> Customer Name</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['driverName']; ?></span>	<strong> Driver Name</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo date("d F Y",strtotime($job['startDate']))." ".$job['startTime']; ?></span>	<strong>Start Date Time</strong>
								</li>
								
							
							</ul>
						</fieldset>							
						
						<div class="timeline-seperator text-center"></div>
								
					</div>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-6">
					<div class="well well-light well-sm margin padding">
						<div class="timeline-seperator text-center"></div>
					<header>
						<h5>Address</h5>
					</header>
					<div class="timeline-seperator text-center"></div>
							

						<fieldset>
							<ul class="list-unstyled">
								<li class="list-group-item">
									<p><strong>Address</strong></p>
									<span class="txt-color-darken"><?php echo $job['address']; ?></span>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $job['street']." ".$job['street2']; ?></span>	<strong>Street</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $job['city']; ?></span>	<strong>City</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $job['state']; ?></span>	<strong>State</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $job['zip'] ; ?></span>	<strong>Zip</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $job['country']; ?></span>	<strong>Country</strong>
								</li>
								
							</ul>
							
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- end row-->
<!-- Modal -->
<div class="modal fade" id="editDriver" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					Edit Driver
				</h4>
			</div>
			<div class="modal-body">
	           <!-- Add CUstomer -->
		<!-- widget content -->
								<div class="widget-body no-padding">
									
									<form action="drivers/addDriver" id="driverAddUpdate" class="smart-form" novalidate="novalidate" autocomplete="off" enctype="multipart/form-data">
										<header>
											Driver Information
										</header>

										<fieldset>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-user"></i>
														<input type="text" name="fullName" placeholder="Driver Name" value="<?php echo $driver['fullName'];?>">
														<input type="hidden" name="cus" value="<?php echo encoding($driver['id']);?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-envelope-o"></i>
														<input type="email" name="email" placeholder="E-mail" autocomplete="off" value="<?php echo $driver['email'];?>">
													</label>
												</section>
											</div>

											<div class="row">
												<!-- <section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-lock"></i>
														<input type="password" name="password" placeholder="Password" autocomplete="off">
													</label>
												</section> -->
												<section class="col col-md-12">
													<label class="input"> <i class="icon-append fa fa-phone"></i>
														<input type="text" name="contactNumber" placeholder="Contact Number" data-mask="(999) 999-9999" value="<?php echo $driver['contactNumber'];?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-md-12">
													<div class="input input-file">
													<span class="button"><input type="file" name="profileImage" id="file" onchange="this.parentNode.nextSibling.value = this.value" accept="image/*" placeholder="Driver image">Browse</span><input type="text" placeholder="Driver image" readonly="" >
													</div>

												</section>
												
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-calendar"></i>
														<input type="text" name="dob" placeholder="Date of Birth" class="datepicker" data-dateformat='dd-mm-yy' readonly="" value="<?php echo date('d-m-Y',strtotime($drivermeta['dob']));?>" >
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-calendar"></i>
														<input type="text" name="doh" placeholder="Date of Hire" class="datepicker" data-dateformat='dd-mm-yy' value="<?php echo date('d-m-Y',strtotime($drivermeta['doh']));?>" readonly="">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-list-ol"></i>
														<input type="text" name="licenseNumber" placeholder="Driver License Number" class="number-only" value="<?php echo $drivermeta['licenseNumber'];?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-calendar"></i>
														<input type="text" name="expiryDate" placeholder="DLN Expiration Date" class="datepicker" data-dateformat='dd-mm-yy' value="<?php echo date('d-m-Y',strtotime($drivermeta['licenseExpiryDate']));?>" readonly="">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-user"></i>
														<input type="text" name="emergencyPersonName" placeholder="Emergency Contact Person Name"value="<?php echo $drivermeta['emergencyPersonName'];?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-phone"></i>
														<input type="text" name="emergencyPersonNumber" placeholder="Emergency Contact Person Number" data-mask="(999) 999-9999" value="<?php echo $drivermeta['emergencyPersonNumber'];?>">
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
														<input type="text" name="address" placeholder="Address" id="autocomplete0" class="autocomplete" data-id="0" value="<?php echo $drivermeta['address'];?>">
														<input type="hidden" class="latitudeautocomplete0" name="latitude" placeholder="latitude" value="<?php echo $drivermeta['latitude'];?>">
														<input type="hidden" class="longitudeautocomplete0" name="longitude" placeholder="longitude" value="<?php echo $drivermeta['longitude'];?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-3">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="street" placeholder="Street" class="street_numberautocomplete0" value="<?php echo $drivermeta['street'];?>">
													</label>
												</section>
												<section class="col col-9">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="street2" placeholder="Street Second" class="routeautocomplete0" value="<?php echo $drivermeta['street2'];?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="city" placeholder="City" class="localityautocomplete0" value="<?php echo $drivermeta['city'];?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="state" placeholder="State" class="administrative_area_level_1autocomplete0" value="<?php echo $drivermeta['state'];?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="zip" placeholder="Zip Code" class="postal_codeautocomplete0" value="<?php echo $drivermeta['zip'];?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="country" placeholder="Country" class="countryautocomplete0" value="<?php echo $drivermeta['country'];?>">
													</label>
												</section>
											</div>

										</fieldset>
										
										<footer>
											<button type="submit" id="submit" class="btn btn-primary">
												Update Driver
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