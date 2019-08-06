
<?php $backend_assets=base_url().'backend_assets/'; ?>
<div class="row">
	<div class="col-sm-12">
		<div class="well well-sm">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-6">
					<div class="well well-light well-sm margin padding">
						<header>
							<h5>Customer Information </h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						<br>

						<fieldset>
							
							<li class="list-group-item">
								<span class="pull-right"><?php echo $customermeta['creditHoldStatus'] ?'Yes' :'No'; ?></span>	<strong>Credit Hold</strong>
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
						
					
					</div>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-6">
					<div class="well well-light well-sm margin padding">
						<header>
							<h5>Address</h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						

						<fieldset>
							
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

<!-- end row