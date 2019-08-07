
<?php $backend_assets=base_url().'backend_assets/'; ?>
<div class="row">
	<div class="col-sm-12">
		<div class="well well-sm">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-6">
					<div class="well well-light well-sm margin padding">
						<ul class="demo-btns text-center">
											
											<li>
												<a href="javascript:void(0);" onclick="creditHoldStatus(this);" data-message="You want to credit hold <?php echo $customermeta['creditHoldStatus'] ?' NO' :'YES'; ?>" data-useid="<?php echo encoding($customermeta['userId']);?>"  class="btn btn-labeled btn-warning"> <span class="btn-label"><i class="glyphicon glyphicon-usd"></i></span>Credit Hold </a>
											</li>
										
											
											<li>
												<a href="javascript:void(0);" class="btn btn-labeled btn-info" data-toggle="modal" data-target="#editCustomers"> <span class="btn-label"><i class="glyphicon glyphicon-edit"></i></span>Edit </a>
											</li>
											<li>
												<a href="javascript:void(0);" class="btn btn-labeled btn-danger" onclick="customerDelete(this);" data-message="Are you sure want to delete this customer." data-useid="<?php echo encoding($customermeta['userId']);?>"> <span class="btn-label"><i class="glyphicon glyphicon-trash"></i></span>Delete </a>
											</li>
										
										</ul>
						<header>
							<h5>Customer Information </h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						<br>

						<fieldset>
							<ul class="list-unstyled">
							<li class="list-group-item">
								<span class="label label-<?php echo $customermeta['creditHoldStatus'] ?'danger' :'warning'; ?> pull-right"><?php echo $customermeta['creditHoldStatus'] ?'Yes' :'No'; ?></span>	<strong>Credit Hold</strong>
							
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo ucfirst($customer['fullName']); ?></span>	<strong>Customer Name</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customer['email']; ?></span>	<strong>Email</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customer['contactNumber']; ?></span>	<strong>Contact Number</strong>
							</li>
						</ul>
					</fieldset>
						
					
					</div>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-6">
					<div class="well well-light well-sm margin padding">
						<header>
							<h5>Address</h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						

						<fieldset>
							<ul class="list-unstyled">
							<li class="list-group-item">
								<p><strong>Address</strong></p>
								<span class=""><?php echo $customermeta['address']; ?></span>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['street']." ".$customermeta['street2']; ?></span>	<strong>Street</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['city']; ?></span>	<strong>City</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['state']; ?></span>	<strong>State</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['zip'] ; ?></span>	<strong>Zip</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['country']; ?></span>	<strong>Country</strong>
							</li>
							
						</ul>
							
						</fieldset>
						
						<h5> Billing Address</h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						

						<fieldset>
							<ul class="list-unstyled">
							<li class="list-group-item">
								<p><strong>Address</strong></p>
								<span class=""><?php echo $customermeta['billAddress']; ?></span>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['billStreet']." ".$customermeta['billStreet2']; ?></span>	<strong>Street</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['billCity']; ?></span>	<strong>City</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['billState']; ?></span>	<strong>State</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['billZip'] ; ?></span>	<strong>Zip</strong>
							</li>
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['billCountry']; ?></span>	<strong>Country</strong>
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
<div class="modal fade" id="editCustomers" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					Edit Customer
				</h4>
			</div>
			<div class="modal-body">
	           <!-- Add CUstomer -->
		<!-- widget content -->
								<div class="widget-body no-padding">
									
									<form action="customers/addCustomer" id="customerAddUpdate" class="smart-form" novalidate="novalidate" autocomplete="off">
										<header>
											Basic Information
										</header>

										<fieldset>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-user"></i>
														<input type="text" name="fullName" placeholder="Customer Name" value="<?php echo ucfirst($customer['fullName']); ?>">
														<input type="hidden" name="cus" value="<?php echo encoding($customer['id']);?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-envelope-o"></i>
														<input type="email" name="email" placeholder="E-mail" value="<?php echo $customer['email']; ?>">
													</label>
												</section>
											</div>

											<div class="row">
											<!-- 	<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-lock"></i>
														<input type="password" name="password" placeholder="Password">
													</label>
												</section> -->
												<section class="col col-12">
													<label class="input"> <i class="icon-append fa fa-phone"></i>
														<input type="text" name="contactNumber" placeholder="Contact Number" data-mask="(999) 999-9999" value="<?php echo $customer['contactNumber']; ?>">
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
														<input type="text" name="address" placeholder="Address" id="autocomplete0" class="autocomplete" data-id="0" value="<?php echo $customermeta['address']; ?>">
														<input type="hidden" class="latitudeautocomplete0" name="latitude" value="<?php echo $customermeta['latitude']; ?>" placeholder="latitude">
														<input type="hidden" class="longitudeautocomplete0" name="longitude" placeholder="longitude"  value="<?php echo $customermeta['longitude']; ?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-3">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="street" placeholder="Street" class="street_numberautocomplete0" value="<?php echo $customermeta['street']; ?>">
													</label>
												</section>
												<section class="col col-9">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="street2" placeholder="Street Second" class="routeautocomplete0" value="<?php echo $customermeta['street2']; ?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="city" placeholder="City" class="localityautocomplete0" value="<?php echo $customermeta['city']; ?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="state" placeholder="State" class="administrative_area_level_1autocomplete0" value="<?php echo $customermeta['state']; ?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="zip" placeholder="Zip Code" class="postal_codeautocomplete0" value="<?php echo $customermeta['zip']; ?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="country" placeholder="Country" class="countryautocomplete0" value="<?php echo $customermeta['country']; ?>">
													</label>
												</section>
											</div>

										</fieldset>
										<header>
											Billing Address
										</header>

										<fieldset>
											<div class="row">
												<section class="col col-md-12">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="address1" placeholder="Address" id="autocomplete1" class="autocomplete" data-id="0" value="<?php echo $customermeta['billAddress']; ?>">
														<input type="hidden" class="latitudeautocomplete1" name="latitude1" placeholder="latitude" value="<?php echo $customermeta['billLatitude']; ?>">
														<input type="hidden" class="longitudeautocomplete1" name="longitude1" placeholder="longitude" value="<?php echo $customermeta['billLongitude']; ?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-3">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="street1" placeholder="Street" class="street_numberautocomplete1" value="<?php echo $customermeta['billStreet']; ?>">
													</label>
												</section>
												<section class="col col-9">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="street21" placeholder="Street Second" class="routeautocomplete1" value="<?php echo $customermeta['billStreet2']; ?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="city1" placeholder="City" class="localityautocomplete1" value="<?php echo $customermeta['billCity']; ?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="state1" placeholder="State" class="administrative_area_level_1autocomplete1" value="<?php echo $customermeta['billState']; ?>">
													</label>
												</section>
											</div>
											<div class="row">
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
														<input type="text" name="zip1" placeholder="Zip Code" class="postal_codeautocomplete0" value="<?php echo $customermeta['billZip']; ?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-map-marker"></i>
													<input type="text" name="country1" placeholder="Country" class="countryautocomplete1" value="<?php echo $customermeta['billCountry']; ?>">
													</label>
												</section>
											</div>

										</fieldset>
										<footer>
											<button type="submit" id="submit" class="btn btn-primary">
												Update Customer
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