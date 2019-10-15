<?php $backend_assets=base_url().'backend_assets/'; ?>
<section id="widget-grid" class="">
	<!-- row -->
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
			<div class="well no-padding">
				<form action="jobtype/createJobType" id="createJobType" class="smart-form" novalidate="novalidate" autocomplete="off" enctype="multipart/form-data" method="post">
					<fieldset>
						<div class="row">
							<section class="col col-md-12">
								<label class="input"> <i class="icon-append fa fa-bookmark"></i>
									<input type="text" name="jobType" placeholder="Job Type" maxlength="30" size="30"  >
									<input type="hidden" name="total_element" id="total_element" value="0" >
									
								</label>
							</section>				
						</div>				
					<!-- add  -->
						<div class="row serviceContainer">

							<div class="col-md-12 col-sm-12 col-lg-12 elementPro" id="divPro_1">
								<section class="col col-md-12">
									<label class="label"><strong>Question-1</strong><!-- 	<a href="javascript:void(0);" class="btn btn-default btn-circle pull-right removePro"><i class="fa fa-times" aria-hidden="true"></i></a> --></label>
								</section>
								<!-- add -->
								<section class="col col-md-12">
									<label class="label">Question<span class="error">*</span></label>
									<label class="textarea">
										<textarea name="question_1" placeholder="Question" maxlength="700" class="questionClass"></textarea>
										<input type="hidden" name="questionId" value="0">
										</label>
								</section>
							
								<section class="col col-md-12">
								    <label class="select">
								        <select name="questionType_1" onchange="questionOpt(this);" class="questionType_1" id="que_1"  >
								            <option value="text" selected="">Text/Comment</option>
								            <option value="radio">Radio</option>
								            <option value="checkbox">Checkbox</option>
								    	</select><i></i>
								 	</label>
								</section>
								<section class="col col-md-12" id="questionOptions_1">
								</section>

							</div>
						</div>
						<section>
							<a href="javascript:void(0);" class="btn btn-default btn-circle pull-right addPro"><i class="fa fa-plus" aria-hidden="true"></i></a>
						</section>
						<!-- add  -->
					</fieldset>						
					<footer>
						<button type="submit" id="submit" class="btn btn-primary">
							Save
						</button>
					</footer>
				</form>
			</div>	
		</div>
	</div>
 	<!-- end row -->        
</section>
<!-- end widget grid -->