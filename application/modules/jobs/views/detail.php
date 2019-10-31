 
 <style type="text/css">
  #map-show {
  width: auto;
  height:500px;
}
</style>
<?php $backend_assets=base_url().'backend_assets/'; ?>
<div class="row">
	<div class="col-sm-12">
		<div class="well well-sm">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12">
					<?php 
						/*echo "<pre>";
						print_r($job);
						echo "</pre>";*/

					?>
					<div class="well well-light well-sm margin padding">
						<!-- button -->
						<ul class="demo-btns text-right">
							<?php       
					           $pointsArray=array();
					           if($job['points']):
					              $pointsArray= array_values(array_filter(explode("|",$job['points'])));
					            endif;
					           $p = array();
					           for ($i=0; $i < sizeof($pointsArray) ; $i++) { 
					            $pp = explode(",",$pointsArray[$i]);
					             $p[$i]['lat'] = $pp[0];
					             $p[$i]['lng'] = $pp[1];
					           }
					          // echo "<pre>";
					           $ppp= json_encode($p);
					        
					            $polygonColor = !empty($job['polygonColor'])?$job['polygonColor']:'#FF0000';
					         
								$showbtn 	= false;
								$labelShow 	= "";
								$timeShow 	= false;
								switch ($job['jobStatus']) {
									case 0:

										$msg 			= "Are you sure want to start this job.";	 
										$showtitle 		= "Start Job";	 
										$status 		= 1;	 
										$btn 			= "btn-warning";	
										$showbtn 		= true; 
										$labelShow 		='<label class="text-center center-block padding-10 label label-success"><i class="fa fa-refresh fa-spin" aria-hidden="true"></i>&nbsp;&nbsp;Open</label>';
										break;
									case 1:
										$msg 			= "Are you sure want to complete this job.";
										$status 		= 2;
										$btn 			= "btn-success";
										$showtitle 		= "Complete Job";	
										$showbtn 		= true;  
										$labelShow 		='<label class="text-center center-block padding-10 label label-warning"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i>&nbsp;&nbsp;In Progress</label>';
										$timeShow 		= true;
										break;
									case 2:
										$msg 			= "";
										$showbtn 		= false;
										$status 		= 0;
										$btn 			= "btn-warning";
										$showtitle 		="";
										$labelShow 		='<label class="text-center center-block padding-10 label label-success"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;&nbsp;Completed</label>';
										$timeShow 		= true;
										break;
									
									default:
										$msg 			= "";
										$showbtn 		= false;
										$status 		= 0;
										$btn 			= "btn-warning";
										$showtitle 		= "";
										break;
									}	
							?>
							<?php if($job['jobStatus'] !=2): ?>
							<li>
								<a href="<?php echo base_url().'jobs/editJob/'.encoding($job['jobId']); ?>" class="btn btn-labeled btn-info"> <span class="btn-label"><i class="glyphicon glyphicon-edit"></i></span>Edit </a>
							</li>
							<li>
								<a href="javascript:void(0);" class="btn btn-labeled btn-danger" onclick="jobDelete(this);" data-message="You want to delete this job." data-useid="<?php echo encoding($job['jobId']);?>"> <span class="btn-label"><i class="glyphicon glyphicon-trash"></i></span>Delete </a>
							</li>
							<?php endif; ?>
						</ul>
						<!-- button -->
						<div class="timeline-seperator text-center"></div>
						<header>
							<h5>Basic Information
								
							 </h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						<br>
						<div class="row" >
							
							<div class="col-lg-12 col-md-12 col-sm-12" >
								<strong>Job Status</strong>
								<span class="pull-right"> <?php echo $labelShow; ?></span>
							</div>
							<?php if($timeShow): ?>
							<br>
							<div class="col-lg-12 col-md-12 col-sm-12" >
								<strong>Job Work Time Duration </strong>
								<span class="pull-right"> <label class="text-center center-block padding-10 label label-info"><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;&nbsp;<?php echo $job['timeDuration']; ?></label></span>

							</div>
							<?php endif; ?>
						</div>
						<fieldset>
							<ul class="list-unstyled">
								
								<li class="list-group-item">
									<div class="row" >
										<div class="col-lg-6 col-md-6 col-sm-12" >
											<ul class="list-unstyled">
												<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['jobName']; ?></span>	<strong> Job Name</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['customerName']; ?></span>	<strong> Customer Name</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo date("d/m/Y",strtotime($job['startDate']))." ".$job['startTime']; ?></span><strong>Creation Date</strong>
								</li>	
											</ul>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-12" >
											<ul class="list-unstyled">
													<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['jobType']; ?></span>	<strong> Job Type</strong>
								</li>
									<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['driverName']; ?></span>	<strong> Driver Name</strong>
								</li>
											</ul>
										</div>
									</div>
								</li>	
								<!-- <li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['jobName']; ?></span>	<strong> Job Name</strong>
								</li>	 -->
							<!-- 	<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['jobType']; ?></span>	<strong> Job Type</strong>
								</li> -->
								<!-- <li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['customerName']; ?></span>	<strong> Customer Name</strong>
								</li> -->
							<!-- 	<li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo $job['driverName']; ?></span>	<strong> Driver Name</strong>
								</li> -->
								<!-- <li class="list-group-item">
									<span class="pull-right txt-color-darken"><?php echo date("d F Y",strtotime($job['startDate']))." ".$job['startTime']; ?></span><strong>Creation Date</strong>
								</li> -->
							</ul>
						</fieldset>							
						
					</div>
				</div>
				
			</div>
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12">
					<div class="well well-light well-sm margin padding">
						<?php
						/*	echo "<pre>";
							print_r($questions);
							echo "</pre>";*/

						?>	
						<header>
							<h5><strong>Job Type Questions</strong> <label class="label label-info"><?php echo $job['jobType']; ?></label></h5>
						</header>
						<div class="timeline-seperator text-center"></div>
						<fieldset>
							<ul class="list-unstyled">
								<?php 
									$colors = array('info', 'warning','success');
								if(!empty($questions)){ 
									
									foreach ($questions as $key => $question) {  $rand_color = $colors[array_rand($colors)]; ?>
								<li class="list-group-item">
									<div class="row smart-form">
									<div class="col col-md-12 col-sm-12 col-lg-12">
										<p class="alert alert-<?= $rand_color; ?>"><strong>Q. <?= $key+1;?>: <?= $question->question;?> </strong></p>
									</div>	
									<div class="col col-md-1 col-sm-1 col-lg-1">
										<strong>Answer:</strong>
									</div>	<?php switch ($question->type) {
											case 'radio':
												$inputType = 'radio' ;
												break;
											case 'checkbox':
												$inputType = 'checkbox' ;
												break;
											
											default:
												$inputType = 'text' ;
												break;
											}
											
											if($inputType=='text'){
												?>
												<div class="col col-md-11 col-sm-11 col-lg-11">
												<?= !empty($question->answer) ? $question->answer :"NA";?></div>
											<?php }else{ 
												$answer  = !empty($question->answer) ? explode(",",$question->answer): array();
												$options = (isset($question->options) && !empty($question->options)) ? json_decode($question->options,true):array();
													for ($i=0; $i <sizeof($options) ; $i++) { 
													?>
													<div class="col col-md-4 col-sm-4 col-lg-4">
													<label class="<?= $inputType; ?>">
																<input type="<?= $inputType; ?>" name="<?= $inputType.$key; ?>" <?= in_array($options[$i],$answer)? 'checked="checked"':''; ?> onclick="return false;">
																<i></i><?= $options[$i]; ?></label>	</div>	
												
													<?php }
												?>
												
											<?php }
										 ?>
									
									
								
									</div>
								</li>
								<?php } }else{
									$rand_color = $colors[array_rand($colors)];
								 ?>
									<li class="list-group-item">
									<p class="text-center alert alert-<?= $rand_color; ?>"><strong>No questions found right now</strong></p>
									
								</li>
								<?php } ?>
							</ul>
						</fieldset>
					</div>	
				</div>
			</div>
			
			<div class="row">
				<!-- address -->
				<div class="col-sm-12 col-md-12 col-lg-12">
					<div class="well well-light well-sm margin padding">	
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
									<div class="row">
										<div class="col-sm-12 col-md-6 col-lg-6">
											<ul class="list-unstyled">
												<li class="list-group-item">
												<span class="pull-right"><?php echo $job['street']." ".$job['street2']; ?></span>	<strong>Street</strong>
												</li>
												<li class="list-group-item">
												<span class="pull-right"><?php echo $job['state']; ?></span>	<strong>State</strong>
												</li>
												<li class="list-group-item">
									<span class="pull-right"><?php echo $job['country']; ?></span>	<strong>Country</strong>
								</li>
											</ul>
										</div>
										<div class="col-sm-12 col-md-6 col-lg-6">
											<ul class="list-unstyled">
												<li class="list-group-item">
									<span class="pull-right"><?php echo $job['city']; ?></span>	<strong>City</strong>
								</li>
								<li class="list-group-item">
									<span class="pull-right"><?php echo $job['zip'] ; ?></span>	<strong>Zip</strong>
								</li>
											</ul>
										</div>
									</div>
								</li>	
								<!-- <li class="list-group-item">
									<span class="pull-right"><?php echo $job['street']." ".$job['street2']; ?></span>	<strong>Street</strong>
								</li> -->
								<!-- <li class="list-group-item">
									<span class="pull-right"><?php echo $job['city']; ?></span>	<strong>City</strong>
								</li> -->
								<!-- <li class="list-group-item">
									<span class="pull-right"><?php echo $job['state']; ?></span>	<strong>State</strong>
								</li> -->
								<!-- <li class="list-group-item">
									<span class="pull-right"><?php echo $job['zip'] ; ?></span>	<strong>Zip</strong>
								</li> -->
								<!-- <li class="list-group-item">
									<span class="pull-right"><?php echo $job['country']; ?></span>	<strong>Country</strong>
								</li> -->
							</ul>
						</fieldset>
						<?php if(!empty($job['geoTimeDuration'])): $geoTimeDuration = $job['geoTimeDuration'];if(!empty($geoTimeDuration['timinig'])){ ?>
							<header>
							<h5>JOB WORK TIME (Geo Fencing Tracking) </h5>
						</header>
						<div class="timeline-seperator text-center"></div>		
						<fieldset>
							<div class="row">
							<!-- before -->
								<div class="col-sm-12 col-md-12 col-lg-12">
									<?php 
								/*	echo "<pre>";
									print_r($geoTimeDuration['timinig']);
									echo "</pre>";*/
									?>
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover" width="100%">
								<thead>			                
									<tr>
										<th data-hide="phone">ID</th>
										<th data-hide="phone">In Time </th>
										<th data-hide="phone,tablet">Out Time</th>
										<th data-hide="phone,tablet">Total Time </th>
									
									</tr>
								</thead>
								<tbody>
									<?php foreach ($geoTimeDuration['timinig'] as $y => $v) { ?>
									<tr>
										<td><?= ($y+1); ?></td>
										<td><?= date('d/m/Y H:i A',strtotime($v->startTime)); ?></td>
										<td><?= ($v->endTime!='Progress') ?date('d/m/Y H:i A',strtotime($v->endTime)):$v->endTime; ?></td>
										<td><?= (($v->endTime!='Progress') && !empty($v->timeDuration))? $v->timeDuration:"NA"; ?></td>
									</tr>	
									<?php }  ?>	
								</tbody>
								<tfoot>
									<tr>
										<th colspan="3">Total Time Duration</th>
										<th><?= $geoTimeDuration['total']; ?></th>
									</tr>
								</tfoot>
							</table>
						</div>
								</div>
							</div>
						</fieldset>	
						<?php } endif; ?>
						<?php if($job['geoFencing']==1): ?>
						<div class="timeline-seperator text-center"></div>
						<header>
							<h5>Geo Fencing </h5>
						</header>
						<div class="timeline-seperator text-center"></div>		
						<fieldset>
							<div id="map-show"></div>
						</fieldset>	
						<?php endif; ?>
					</div>	
				</div>
				<!-- address -->
			<!-- 	<?php if($job['geoFencing']==1): ?>
				<div class="col-sm-12 col-md-12 col-lg-12">
					<div class="well well-light well-sm margin padding">
						<div class="timeline-seperator text-center"></div>
						<header>
							<h5>Geo Fencing </h5>
						</header>
						<div class="timeline-seperator text-center"></div>		
						<fieldset>
							<div id="map-show"></div>
						</fieldset>	
					</div>
				</div>
				<?php endif; ?> -->
			</div>
			
		<!-- Report -->
			<?php if(!empty($job['jobReport'])): $reports = json_decode($job['jobReport'],true);
				$before = isset($reports['beforeWork']) ?$reports['beforeWork']:array();
				$after = isset($reports['afterWork']) ?$reports['afterWork']:array();
			  ?>
			<div class="row">
				<!-- before -->
				<div class="col-sm-12 col-md-12 col-lg-6">
					<div class="well well-light well-sm margin padding">
						<div class="timeline-seperator text-center"></div>
						<header>
							<h5>Before Work</h5>
						</header>
						<div class="timeline-seperator text-center"></div>	
						<?php if(!empty($before)): ?>
						<fieldset>
							<ul class="list-unstyled">
								<li class="list-group-item">
									<span class="pull-right"><?php echo date("Y-m-d H:i A",strtotime($before['startDateTime'])); ?></span>	<strong>Start Job</strong>
								</li>
								<li class="list-group-item">
									<div class="row">
										<?php 
										$bworkImage= (isset($before['workImage']) && !empty($before['workImage'])) ? $before['workImage'] :array();
										for ($i=0; $i <sizeof($bworkImage) ; $i++) { ?>
										<div class="col-sm-4 col-md-4 col-lg-4">
											<img src="<?php echo S3JOBS_URL.$before['workImage'][$i];  ?>" class="img img-thumbnail" >
										</div>
										<?php } ?>
										
									</div>	
								</li>
								<li class="list-group-item">
									<p><strong>Comments</strong></p>
									<span class="txt-color-darken"><?php echo $before['comments']; ?></span>
								</li>
								<li class="list-group-item">
									
									<div class="row">
										<div class="col-sm-12 col-md-12 col-lg-12">
											<p class="pull-right"><img src="<?php echo S3JOBS_URL.$before['driverSignature'];  ?>" width="100" height="100"  class="img img-thumbnail"  ></p>
										</div>
										<div class="col-sm-12 col-md-12 col-lg-12">
											<p class="pull-right"><strong>Driver Signature</strong></p>
										</div>
									</div>	
								</li>
							</ul>	
						</fieldset>
					<?php endif; ?>
				</div>
			</div>
			<!-- before -->
			<!-- after -->
			<div class="col-sm-12 col-md-12 col-lg-6">
				<div class="well well-light well-sm margin padding">
					<div class="timeline-seperator text-center"></div>
					<header>
						<h5>After Work</h5>
					</header>
					<div class="timeline-seperator text-center"></div>	
						<?php if(!empty($after)): ?>
						<fieldset>
							<ul class="list-unstyled">
							
								<li class="list-group-item">
									<span class="pull-right"><?php echo date("Y-m-d H:i A",strtotime($after['endDateTime'])); ?></span>	<strong>End Job</strong>
								</li>
								<li class="list-group-item">
									<div class="row">
										<?php $aworkImage= (isset($after['workImage']) && !empty($after['workImage'])) ? $after['workImage'] :array(); for ($i=0; $i <sizeof($aworkImage) ; $i++) { ?>
										<div class="col-sm-4 col-md-4 col-lg-4">
											<img src="<?php echo S3JOBS_URL.$after['workImage'][$i];  ?>" class="img img-thumbnail" >
										</div>
										<?php } ?>
										
									</div>	
								</li>
								<li class="list-group-item">
									<p><strong>Comments</strong></p>
									<span class="txt-color-darken"><?php echo $after['comments']; ?></span>
								</li>
								<li class="list-group-item">
									<div class="row">
										<div class="col-sm-12 col-md-12 col-lg-12">
											<p class="pull-right"><img src="<?php echo S3JOBS_URL.$after['customerSignature'];  ?>" width="100" class="img img-thumbnail"  ></p>
											</div>
											<div class="col-sm-12 col-md-12 col-lg-12">
												<p class="pull-right"><strong>Customer Signature</strong></p>
											</div>
									</div>
								</li>
							</ul>
						</fieldset>
						<?php endif; ?>
					</div>
				</div>
				<!-- after -->
			</div>
			<?php endif; ?>
		<!-- Report -->
		</div>
	</div>
</div>
<!-- end row-->
<script type="text/javascript">
	var geocoder;
	var map;
	var polygonArray 	= [];
	var polygonColor 	= "<?php echo $polygonColor; ?>";

	var address 		=  "<?php echo (isset($job['address']) && !empty($job['address'])) ?$job['address']:'NA'; ?>";
	var areaLatitude 	=  parseFloat("<?php echo (isset($job['latitude']) && !empty($job['latitude'])) ?$job['latitude']:22.719568; ?>");
	var areaLongitude 	= parseFloat("<?php echo (isset($job['longitude']) && !empty($job['longitude'])) ?$job['longitude']:75.857727; ?>");
	//var myPolygon;
	function initMap() {
		// Map Center
		var myLatLng 	= new google.maps.LatLng(areaLatitude,areaLongitude);
		// General Options
		var mapOptions = {
		zoom: 19,
		center: myLatLng,
		mapTypeId: google.maps.MapTypeId.SATELLITE,//google.maps.MapTypeId.RoadMap
		};
		var map = new google.maps.Map(document.getElementById('map-show'),mapOptions);
		// Polygon Coordinates
		/* var triangleCoords = [

		new google.maps.LatLng(22.425279,75.711479),
		new google.maps.LatLng(22.426231,75.807953),
		new google.maps.LatLng(22.371952,75.735855),
		new google.maps.LatLng(22.390682,75.625305),
		];*/
		var f 				= '<?php echo $ppp; ?>';
		var triangleCoords 	= jQuery.parseJSON(f) ;
		var data 				= [];
		$.each(triangleCoords, function( index, value ) {
			data.push( new google.maps.LatLng(value.lat,value.lng)); 
		});
		console.log(data);
		// Styling & Controls
		myPolygon = new google.maps.Polygon({
			paths: data,
			draggable: false, // turn off if it gets annoying
			editable: false,
			geodesic: false,
			strokeColor: polygonColor,
			strokeOpacity: 0.8,
			strokeWeight: 2,
			fillColor: polygonColor,
			fillOpacity: 0.35
		});

		myPolygon.setMap(map);
		var marker = new google.maps.Marker({
			position: {lat: areaLatitude, lng: areaLongitude },
			title: address,
			map: map
		});
		//google.maps.event.addListener(myPolygon, "dragend", getPolygonCoords);
		google.maps.event.addListener(myPolygon.getPath(), "insert_at", getPolygonCoords);
		//google.maps.event.addListener(myPolygon.getPath(), "remove_at", getPolygonCoords);
		google.maps.event.addListener(myPolygon.getPath(), "set_at", getPolygonCoords);
	}

	//Display Coordinates below map
	function getPolygonCoords() {
		var len = myPolygon.getPath().getLength();
		var htmlStr = "";
		for (var i = 0; i < len; i++) {
		
			htmlStr += myPolygon.getPath().getAt(i).toUrlValue(6)+"|";
			//Use this one instead if you want to get rid of the wrap > new google.maps.LatLng(),
			//htmlStr += "" + myPolygon.getPath().getAt(i).toUrlValue(5);
		}
		document.getElementById('boundary').innerHTML = htmlStr;
	}
	function copyToClipboard(text) {
	  window.prompt("Copy to clipboard: Ctrl+C, Enter", text);
	}
	google.maps.event.addDomListener(window, 'load', initMap);
</script>