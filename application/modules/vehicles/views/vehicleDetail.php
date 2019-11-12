<?php $backend_assets=base_url().'backend_assets/';

/*echo "<pre>";
print_r($vehicle);
echo "</pre>";*/

 ?>
<div class="row" id="v_detail" data-vid="<?php echo encoding($vehicle['vehicleId']);?>">
	<div class="col-sm-12">
		<div class="well well-sm">
			<div class="row">
				<div class="col-sm-6 col-md-6 col-lg-6">
					<div class="well well-light well-sm margin padding">
						<header>
							<h5>Vehicle Information</h5>
						</header>
					
						<ul class="demo-btns text-center">
							<li>
								<a href="javascript:void(0);" class="btn btn-labeled btn-info" data-toggle="modal" data-target="#editVehicle"> <span class="btn-label"><i class="glyphicon glyphicon-edit"></i></span>Edit </a>
							</li>	
							<li>
								<a href="javascript:void(0);" class="btn btn-labeled btn-warning" data-toggle="modal" data-target="#assignVehicleDriver"> <span class="btn-label"><i class="glyphicon glyphicon-bookmark"></i></span>Assign Driver</a>
							</li>
							<li>
								<a href="javascript:void(0);" class="btn btn-labeled btn-danger" onclick="vehicleDelete(this);" data-message="You want to delete this vehicle." data-useid="<?php echo encoding($vehicle['vehicleId']);?>"> <span class="btn-label"><i class="glyphicon glyphicon-trash"></i></span>Delete </a>
							</li>

						</ul>
						<div class="timeline-seperator text-center"></div>
						
						<br>
						<fieldset>
							<ul class="list-unstyled">
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $vehicle['year']; ?></span>	<strong>Year</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $vehicle['manufacturer']; ?></span>	<strong>Manufacturer</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $vehicle['model']; ?></span>	<strong>model</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $vehicle['vin']; ?></span>	<strong>Vin</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $vehicle['plate']; ?></span>	<strong>Plate</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $vehicle['color']; ?></span>	<strong>Color</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $vehicle['state']; ?></span>	<strong>State</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo date("d M Y",strtotime($assignVehicle['assignDate'])); ?></span>	<strong>Driver Assign Date</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken">
										<label class="select">
									        <select disabled="">
									            <option value="0" selected="" disabled="">No Driver</option>
									            <?php foreach ($drivers as $d => $driver) {?>
									            <option value="<?php echo $driver->id; ?>" <?php echo $assignVehicle['driverId']==$driver->id ?"selected='selected'":"" ?>><?php echo $driver->fullName; ?></option>
									        	<?php } ?>
									           
									        </select> <i></i></label>
									</span><strong>Assign Driver</strong>
								</li>

							</ul>
						</fieldset>							
						
					</div>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-6">
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
					<h2>Vehicle History</h2>
				</header>
				<br>
				<ul class="demo-btns text-right">
					<li>
						<a href="javascript:void(0);" class="btn btn-labeled btn-info" onclick="openHistory();" > <span class="btn-label"><i class="glyphicon glyphicon-plus"></i></span>Add history </a>
					</li>	
				</ul>
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
							<table id="vehilceHistory_list" class="table table-striped table-bordered table-hover" width="100%">
								<thead>			                
									<tr>
										<!-- <th data-hide="phone">ID</th> -->
										<th data-hide="phone,tablet">Date</th>
										<th data-hide="phone">Type</th>
										<th data-hide="phone,tablet">Attachment</th>
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
						
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- end row-->
<!-- Modal -->
<div class="modal fade" id="editVehicle" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					Edit Vehicle
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
														<input type="text"  name="year" placeholder="Year" data-mask="2099" value="<?php echo $vehicle['year']; ?>">
														<input type="hidden" name="vid" value="<?php echo encoding($vehicle['vehicleId']);?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-list-alt"></i>
														<input type="text"  name="model" placeholder="Model" value="<?php echo $vehicle['model']; ?>">
													</label>
												</section>
												
											</div>

											<div class="row">
												
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-list-alt"></i>
														<input type="text"  name="plate" placeholder="Plate" value="<?php echo $vehicle['plate']; ?>">
													</label>
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-list-alt"></i>
														<input type="text"  name="vin" placeholder="Vin" value="<?php echo $vehicle['vin']; ?>">
													</label>
												</section>
											</div>
											<div class="row">
												
												<section class="col col-md-12">
												    <label class="select">
												        <select name="manufacturer">
												            <option value="0" selected="" disabled="">Manufacturer</option>
												            <?php foreach ($manufacturers as $m => $manu) {?>
												            <option value="<?php echo $manu->title; ?>" <?php echo $vehicle['manufacturer']==$manu->title ? "selected='selected'":""; ?>><?php echo $manu->title; ?></option>
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
												            <option value="<?php echo $color->color; ?>" <?php echo $vehicle['color']==$color->color ? "selected='selected'":""; ?>><?php echo $color->color; ?></option>
												        	<?php } ?>
												           
												        </select> <i></i> </label>
												</section>
												<section class="col col-6">
												    <label class="select">
												        <select name="state">
												            <option value="0" selected="" disabled="">States</option>
												            <?php foreach ($states as $s => $state) {?>
												            <option value="<?php echo $state->stateName; ?>" <?php echo $vehicle['state']==$state->stateName ? "selected='selected'":""; ?>><?php echo $state->stateName; ?></option>
												        	<?php } ?>
												           
												        </select> <i></i> </label>
												</section>
											</div>

										</fieldset>
										
										<footer>
											<button type="submit" id="submit" class="btn btn-primary">
												Update Vehicle
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
<!-- Modal -->
<div class="modal fade" id="assignVehicleDriver" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					Assign Driver
				</h4>
			</div>
			<div class="modal-body">
	           <!-- Add CUstomer -->
		<!-- widget content -->
								<div class="widget-body no-padding">
									
									<form action="vehicles/assignDriver" id="vehicleAssignDriver" class="smart-form" novalidate="novalidate" autocomplete="off" enctype="multipart/form-data">
									

										<fieldset>

											<div class="row">
												
												
												<section class="col col-6">
												    <label class="select">
												        <select name="driverId">
												            <option value="0" selected="" disabled="">No Driver</option>
												            <?php foreach ($drivers as $d => $driver) {?>
												            <option value="<?php echo $driver->id; ?>" <?php echo $assignVehicle['driverId']==$driver->id ?"selected='selected'":"" ?>><?php echo $driver->fullName; ?></option>
												        	<?php } ?>
												           
												        </select> <i></i> </label>
												        <input type="hidden" name="vid" value="<?php echo encoding($vehicle['vehicleId']);?>">
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-calendar"></i>
														<input type="text" name="assignDate" placeholder="Assign Date" class="datepicker" data-dateformat='dd-mm-yy' readonly="" value="<?php echo isset($assignVehicle['assignDate']) ?date("d-m-Y",strtotime($assignVehicle['assignDate'])) :""; ?>">
													</label>
												</section>
											</div>

										</fieldset>
										
										<footer>
											<button type="submit" class="btn btn-primary">
												Assign
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
<!-- Modal -->
<div class="modal fade" id="addHistory" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					Vehicle History
				</h4>
			</div>
			<div class="modal-body">
	           <!-- Add CUstomer -->
		<!-- widget content -->
								<div class="widget-body no-padding">
									
									<form  method="post" action="vehicles/addHistory" id="addHistoryA" class="smart-form" novalidate="novalidate" autocomplete="off" enctype="multipart/form-data">
									

										<fieldset>

											<div class="row">
												
												
												<section class="col col-6">
												    <label class="select">
												        <select name="type" id="vhtype">
												            <option value="0" selected="" disabled="">Type</option>
												            <?php foreach ($vehicleJobTypes as $d => $type) {?>
												            <option value="<?php echo $type->vjobTypeId; ?>"><?php echo $type->type; ?></option>
												        	<?php } ?>
												           
												        </select> <i></i> </label>
												        <input type="hidden" name="vehicleId" id="hvehicleId" value="<?php echo encoding($vehicle['vehicleId']);?>">
												        <input type="hidden" name="hid" id="historyId" value="0">
												</section>
												<section class="col col-6">
													<label class="input"> <i class="icon-append fa fa-calendar"></i>
														<input type="text" name="date" placeholder="Date" id="hdate" class="datepicker" data-dateformat='dd-mm-yy' readonly="" value="">
													</label>
												</section>
												<section class="col col-md-12">
													<label class="input">
													<div class="input input-file">
													<input type="text" placeholder="Attachment" id="hAttachment" readonly="" ><span class="button"><input type="file" name="attachment" id="file" onchange="filePreview(this),this.parentNode.nextSibling.value = this.value" accept="image/*,application/pdf, application/vnd.ms-excel,application/msword,text/plain, application/pdf"placeholder="Attachment">Browse</span>
													</div></label>

												</section>
												
													<section class="col-md-6 col-md-3" id="privew"></section>
												</div>
											</div>

										</fieldset>
										
										<footer>
											<button type="submit" id="submiH" class="btn btn-primary">
												Save
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