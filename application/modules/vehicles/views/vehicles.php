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
												           
												        </select> <i></i> </label>
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
												           
												        </select> <i></i> </label>
												</section>
												<section class="col col-6">
												    <label class="select">
												        <select name="state">
												            <option value="0" selected="" disabled="">States</option>
												            <?php foreach ($states as $s => $state) {?>
												            <option value="<?php echo $state->stateName; ?>"><?php echo $state->stateName; ?></option>
												        	<?php } ?>
												           
												        </select> <i></i> </label>
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