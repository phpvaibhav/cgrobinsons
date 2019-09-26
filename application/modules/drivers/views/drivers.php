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
					<span class="widget-icon"> <i class="fa fa-users"></i> </span>
					<h2>Drivers</h2>
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
						<div class="table-responsive">
							<table id="driver_list" class="table table-striped table-bordered table-hover" width="100%">
								<thead>			                
									<tr>
										<th data-hide="phone">ID</th>
										<th data-hide="phone">Driver Name</th>
										<th data-hide="phone,tablet">Email</th>
										<th data-hide="phone,tablet">Contact Number</th>
										<th data-hide="phone,tablet">Status</th>
										<th data-hide="phone,tablet">Action</th>
									</tr>
								</thead>
								<tbody>
											
								</tbody>
							</table>
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
<div class="modal fade" id="addDriver" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					New Driver
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
														<input type="text" name="fullName" placeholder="Driver Name" maxlength="30" size="30">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-envelope-o"></i>
														<input type="email" name="email" placeholder="E-mail" autocomplete="off" maxlength="30" size="30" >
													</label>
												</section>
											</div>

											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-lock"></i>
														<input type="password" name="password" placeholder="Password" autocomplete="new-password">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-phone"></i>
														<input type="text" name="contactNumber" placeholder="Contact Number" data-mask="(99999) 999999">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-md-12">
													<div class="input input-file">
													<span class="button"><input type="file" name="profileImage" id="file" onchange="this.parentNode.nextSibling.value = this.value" accept="image/*" placeholder="Driver image">Browse</span><input type="text" placeholder="Driver image" readonly="">
													</div>

												</section>
												
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-calendar"></i>
														<input type="text" name="dob" placeholder="Date of Birth" class="" id="dob" data-dateformat='dd-mm-yy' readonly="">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-calendar"></i>
														<input type="text" name="doh" placeholder="Date of Hire" class="datepicker" data-dateformat='dd-mm-yy' readonly="">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-list-ol"></i>
														<input type="text" name="licenseNumber" placeholder="Driver License Number" class="number-only" maxlength="30" size="30">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-calendar"></i>
														<input type="text" name="expiryDate" placeholder="DLN Expiration Date" class="datepicker" data-dateformat='dd-mm-yy' readonly="">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-user"></i>
														<input type="text" name="emergencyPersonName" placeholder="Emergency Contact Person Name"maxlength="30" size="30">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-phone"></i>
														<input type="text" name="emergencyPersonNumber" placeholder="Emergency Contact Person Number" data-mask="(99999) 999999">
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
														<input type="text" name="street" placeholder="Street" class="street_numberautocomplete0" maxlength="30" size="30">
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

										</fieldset>
										
										<footer>
											<button type="submit" id="submit" class="btn btn-primary">
												Add Driver
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