<?php
/*echo "<pre>";
print_r($jobType);
echo "<br>";
print_r($questions);
echo "</pre>";*/?>

				
				<!-- row -->
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="well well-sm">
							<p>Job Type : <strong><?= $jobType['jobType'];?></strong>
								<span class="pull-right">
									<ul class="demo-btns text-right">
										<li>
							<a href="<?php echo base_url().'jobtype/edit/'.encoding($jobType['jobTypeId']);?>" class="btn btn-labeled btn-info"> <span class="btn-label"><i class="glyphicon glyphicon-edit"></i></span>Edit </a>
							</li>
							
							<li>
								<a href="javascript:void(0);" class="btn btn-labeled btn-danger" onclick="jobTypeDelete(this);" data-message="You want to delete this job type." data-useid="<?php echo encoding($jobType['jobTypeId']);?>"> <span class="btn-label"><i class="glyphicon glyphicon-trash"></i></span>Delete </a>
							</li>
									</ul>
									
								</span>
							</p>
								<div class="timeline-seperator text-center"></div>
								<p><strong>Questions : </strong></p>
								<div class="timeline-seperator text-center"></div>
							<!-- Timeline Content -->
							<div class="smart-timeline">

								<ul class="smart-timeline-list">
									<?php if(!empty($questions)){
										$colors = array('info', 'warning','success');
									  foreach ($questions as $key => $question) {
									  		$rand_color = $colors[array_rand($colors)];
									   ?>
									<li>
										<div class="smart-timeline-icon">
											<i class="fa fa-question"></i>
										</div>
										
										<div class="smart-timeline-content">
											
											
											<div class="well well-sm">
												<p class="alert alert-<?= $rand_color; ?>">
													Question <?= ($key+1);?>: <strong><?= $question->question;?></strong>
												</p>
												<p>Type : <strong> <?=  ucfirst($question->type); ?></strong></p> 
												<?php if($question->type !='text'): ?>
												<p>Option : <strong> <?php $questionOptions = !empty($question->options) ? json_decode($question->options,true):array(); 
													//echo implode(",", $question); 
													for ($i=0; $i <sizeof($questionOptions) ; $i++) { 
														echo '<span class="label label-success">'.$questionOptions[$i].'
				NOTE</span>&nbsp;&nbsp;';
													}
												/*	<span class="label label-warning">
				NOTE</span>*/
												?></strong></p>
												<?php endif; ?>
											</div>		
														
										</div>
									</li>
									<?php } }else{   ?>
										<li class="text-center">No results found right now</li>
									<?php }   ?>
								<!-- 	<li>
										<div class="smart-timeline-icon">
											<i class="fa fa-pencil"></i>
										</div>
										<div class="smart-timeline-time">
											<small>12 Mar, 2013</small>
										</div>
										<div class="smart-timeline-content">
											<p>
												<a href="javascript:void(0);"><strong>Nabi Resource Report</strong></a>
											</p>
											<p>
												Ean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis.
											</p>
											<a href="javascript:void(0);" class="btn btn-xs btn-default">Read more</a>
										</div>
									</li> -->
									
								</ul>
							</div>
							<!-- END Timeline Content -->
				
						</div>
				
					</div>
				
				</div>
				
				<!-- end row -->

