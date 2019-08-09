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
