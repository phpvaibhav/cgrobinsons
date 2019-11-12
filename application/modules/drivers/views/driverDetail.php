<?php $backend_assets=base_url().'backend_assets/'; ?>
<div class="row">
	<div class="col-sm-12">
		<div class="well well-sm">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-4">
					<div class="well well-light well-sm margin padding">
						<div class="row">
							<div class="col-sm-12">
								<div id="myCarousel" class="carousel fade profile-carousel">
									<div class="air air-top-left padding-10">
										<ul class="demo-btns text-center">
										<li>
											<a href="javascript:void(0);" class="btn btn-labeled btn-info" data-toggle="modal" data-target="#editDriver"> <span class="btn-label"><i class="glyphicon glyphicon-edit"></i></span>Edit </a>
										</li>
										<li>
											<a href="javascript:void(0);" class="btn btn-labeled btn-danger" onclick="driverDelete(this);" data-message="You want to delete this driver." data-useid="<?php echo encoding($driver['id']);?>"> <span class="btn-label"><i class="glyphicon glyphicon-trash"></i></span>Delete </a>
										</li>

										</ul>
									</div>
									<div class="air air-bottom-right padding-10">
										
									</div>
									<div class="air air-top-left padding-10">
									
									</div>
								
									<div class="carousel-inner">
										<!-- Slide 1 -->
										<div class="item active">
											<img src="<?php echo $backend_assets; ?>img/demo/s1.jpg" alt="demo user">
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-3 profile-pic">
										<?php 
										$img = $backend_assets.'img/avatars/sunny-big.png';
										if(!empty($driver['profileImage'])):
										$img = base_url().'uploads/users/thumb/'.$driver['profileImage'];
										endif;
										?>
										<img src="<?php echo $img;?>" alt="<?php echo $driver['fullName'];?>">
									</div>
									<div class="col-sm-9 profile-pic">
										<?php $fullName =$driver['fullName'];
										$fullName= substr($fullName, 0,16);
										$name = explode(" ",$fullName);
										?>

										<h1>
										<?php for ($i=0; $i <sizeof($name) ; $i++) { 
										if($i==0){
										echo $name[0]."&nbsp;";
										}else{
										echo '<span class="semi-bold">'.$name[1].'</span>';
										}
										} ?>
										<!-- <span class="semi-bold">Doe</span> -->
										<br>
										<small><?php switch ($driver['userType']) {
										case 1:
										echo 'Super Admin';
										break;
										case 2:
										echo 'Driver';
										break;
										case 3:
										echo 'Employee';
										break;

										default:
										echo 'Unknown';
										break;
										}


										?></small></h1>
										
									</div>
								</div>
								<!-- data -->
								<div class="row">
											<div class="col-md-12 col-sm-12">
												<ul class="list-unstyled">
												<li>
												<p class="text-muted">
												<i class="fa fa-phone"></i>&nbsp;&nbsp;<span class="txt-color-darken"><?php echo $driver['contactNumber']; ?></span>
												</p>
												</li>
												
											
											
												</ul>
											</div>										
											<div class="col-md-12 col-sm-12">
												<ul class="list-unstyled">
											
											
												<li>
												<p class="text-muted">
												<i class="fa fa-birthday-cake"></i>&nbsp;&nbsp;<span class="txt-color-darken"><?php echo date('d M Y',strtotime($drivermeta['dob'])); ?></span>
												</p>
												</li>
												</ul>
												<!-- <ul class="list-unstyled">
												<li>
												<p class="text-muted">
												<i class="fa fa-phone"></i>&nbsp;&nbsp;(<span class="txt-color-darken">313</span>) <span class="txt-color-darken">464</span> - <span class="txt-color-darken">6473</span>
												</p>
												</li>
												<li>
												<p class="text-muted">
												<i class="fa fa-envelope"></i>&nbsp;&nbsp;<a href="mailto:simmons@smartadmin">ceo@smartadmin.com</a>
												</p>
												</li>
												<li>
												<p class="text-muted">
												<i class="fa fa-skype"></i>&nbsp;&nbsp;<span class="txt-color-darken">john12</span>
												</p>
												</li>
												<li>
												<p class="text-muted">
												<i class="fa fa-calendar"></i>&nbsp;&nbsp;<span class="txt-color-darken">Free after <a href="javascript:void(0);" rel="tooltip" title="" data-placement="top" data-original-title="Create an Appointment">4:30 PM</a></span>
												</p>
												</li>
												</ul> -->
											</div>
											<div class="col-md-12 col-sm-12">
												<ul class="list-unstyled">
												
												<li>
												<p class="text-muted">
												<i class="fa fa-envelope"></i>&nbsp;&nbsp;<a href="mailto:<?php echo $driver['email']; ?>"><?php echo $driver['email']; ?></a>
												</p>
												</li>
											
											
												</ul>
											</div>
										</div>
										<br>
								<!--data  -->
							</div>
						</div>
						<div class="timeline-seperator text-center"></div>
						<header>
							<h5>Basic Information</h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						<br>
						<fieldset>
							<ul class="list-unstyled">
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo date("d F Y",strtotime($drivermeta['doh'])); ?></span>	<strong>Date of Hire</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $drivermeta['licenseNumber']; ?></span>	<strong>License Number</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo date("d M Y",strtotime($drivermeta['licenseExpiryDate'])); ?></span>	<strong>License Expiry Date</strong>
								</li>
							</ul>
						</fieldset>							
						<header>
							<h5>Emergency Person Information</h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						<br>
						<fieldset>
							<ul class="list-unstyled">
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $drivermeta['emergencyPersonName']; ?></span>	<strong>Person Name</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $drivermeta['emergencyPersonNumber']; ?></span>	<strong>Person Number</strong>
								</li>
								
							</ul>
						</fieldset>	

					
					</div>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-8">
									<!-- job -->
<section id="widget-grid" class="">
<!-- row -->
<div class="row">
	<!-- NEW WIDGET START -->
	<article class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
	<header>
						<h5>Vehicle</h5>
					</header>
					<div class="timeline-seperator text-center"></div>
							

						<fieldset>
						
							<ul class="list-unstyled">
							
								<li class="list-group-item">
									<span class="pull-right"><?php echo isset($vehicle['year'])? $vehicle['year']:"NA"; ?></span>	<strong>Year</strong>
								</li>
							<li class="list-group-item">
									<span class="pull-right"><?php echo isset($vehicle['manufacturer'])? $vehicle['manufacturer'] :"NA"; ?></span>	<strong>Manufacturer</strong>
								</li>
							<li class="list-group-item">
									<span class="pull-right"><?php echo isset($vehicle['model'])?$vehicle['model']:"NA"; ?></span>	<strong>Model</strong>
								</li>
							<li class="list-group-item">
									<span class="pull-right"><?php echo isset($vehicle['vin']) ?$vehicle['vin']:"NA"; ?></span>	<strong>Vin</strong>
								</li>
							<li class="list-group-item">
									<span class="pull-right"><?php echo isset($vehicle['plate']) ?$vehicle['plate']:"NA"; ?></span>	<strong>Plate</strong>
								</li>
							<li class="list-group-item">
									<span class="pull-right"><?php echo isset($vehicle['color']) ?$vehicle['color']:"NA"; ?></span>	<strong>Color</strong>

								</li>
							
							
								
							</ul>
							
						</fieldset>
								
	</article>
	<article class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
	<header>
						<h5>Address</h5>
					</header>
					<div class="timeline-seperator text-center"></div>
							

						<fieldset>
							<ul class="list-unstyled">
								<li class="list-group-item">
									<p><strong>Address</strong></p>
									<span class="txt-color-darken"><?php echo $drivermeta['address']; ?></span>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $drivermeta['street']." ".$drivermeta['street2']; ?></span>	<strong>Street</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $drivermeta['city']; ?></span>	<strong>City</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $drivermeta['state']; ?></span>	<strong>State</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $drivermeta['zip'] ; ?></span>	<strong>Zip</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $drivermeta['country']; ?></span>	<strong>Country</strong>
								</li>
								
							</ul>
							
						</fieldset>
								
	</article>
	<!-- WIDGET END -->
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
				<span class="widget-icon"> <i class="fa fa-tasks"></i> </span>
				<h2>Driver Jobs</h2>
			
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
					<table id="driverjobList" data-id="<?php echo $driver['id'];?>" class="table table-striped table-bordered table-hover" width="100%">
						<thead>			                
							<tr>
								<th data-hide="phone">ID</th>
								<th data-hide="phone">Job Name</th>
								<th data-hide="phone,tablet">Job Type</th>
								<th data-hide="phone,tablet">Customer</th>
								<th data-hide="phone,tablet">Driver</th>
								<th data-hide="phone,tablet">Start Date Time</th>
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
<!-- job -->
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
														<input type="text" name="fullName" placeholder="Driver Name" value="<?php echo $driver['fullName'];?>" maxlength="20" size="20">
														<input type="hidden" name="cus" value="<?php echo encoding($driver['id']);?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-envelope-o"></i>
														<input type="email" name="email" placeholder="E-mail" autocomplete="off" value="<?php echo $driver['email'];?>"maxlength="30" size="30" >
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
														<input type="text" name="contactNumber" placeholder="Contact Number" data-mask="(99999) 999999" value="<?php echo $driver['contactNumber'];?>">
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
														<input type="text" name="dob" placeholder="Date of Birth" class="" id="dob" data-dateformat='dd-mm-yy' readonly="" value="<?php echo date('d-m-Y',strtotime($drivermeta['dob']));?>" >
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
														<input type="text" name="licenseNumber" placeholder="Driver License Number" class="number-only" value="<?php echo $drivermeta['licenseNumber'];?>" maxlength="30" size="30">
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
														<input type="text" name="emergencyPersonName" placeholder="Emergency Contact Person Name"value="<?php echo $drivermeta['emergencyPersonName'];?>" maxlength="30" size="30">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-phone"></i>
														<input type="text" name="emergencyPersonNumber" placeholder="Emergency Contact Person Number" data-mask="(99999) 999999" value="<?php echo $drivermeta['emergencyPersonNumber'];?>">
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
														<input type="text" name="address" placeholder="Address" id="autocomplete0" class="autocomplete" data-id="0" value="<?php echo $drivermeta['address'];?>" maxlength="300" size="300">
														<input type="hidden" class="latitudeautocomplete0" name="latitude" placeholder="latitude" value="<?php echo $drivermeta['latitude'];?>">
														<input type="hidden" class="longitudeautocomplete0" name="longitude" placeholder="longitude" value="<?php echo $drivermeta['longitude'];?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-3">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="street" placeholder="Street" class="street_numberautocomplete0" value="<?php echo $drivermeta['street'];?>" maxlength="20" size="20">
													</label>
												</section>
												<section class="col col-9">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="street2" placeholder="Street Second" class="routeautocomplete0" value="<?php echo $drivermeta['street2'];?>" maxlength="30" size="30">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="city" placeholder="City" class="localityautocomplete0" value="<?php echo $drivermeta['city'];?>" maxlength="30" size="30">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="state" placeholder="State" class="administrative_area_level_1autocomplete0" value="<?php echo $drivermeta['state'];?>" maxlength="20" size="20">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="zip" placeholder="Zip Code" class="postal_codeautocomplete0 number-only1" value="<?php echo $drivermeta['zip'];?>" maxlength="15" size="15">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="country" placeholder="Country" class="countryautocomplete0" value="<?php echo $drivermeta['country'];?>" maxlength="20" size="20">
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