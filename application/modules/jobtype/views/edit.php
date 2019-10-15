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
									<input type="text" name="jobType" placeholder="Job Type" maxlength="30" size="30" value="<?= $jobType['jobType']; ?>">
									<input type="hidden" name="total_element" id="total_element" value="0" >
									<input type="hidden" name="jobTypeId" value="<?= encoding($jobType['jobTypeId']); ?>" >
								</label>
							</section>				
						</div>				
					<!-- add  -->
						<div class="row serviceContainer">
							<?php if(!empty($questions)){ $x=0; foreach ($questions as $key => $question) { $x = $key+1; ?>
								<div class="col-md-12 col-sm-12 col-lg-12 elementPro" id="divPro_<?= $x; ?>">
								<section class="col col-md-12">
									<label class="label"><strong>Question-<?= $x; ?></strong><a href="javascript:void(0);" id="remove_<?= $x; ?>" class="btn btn-default btn-circle btn-danger pull-right removePro"><i class="fa fa-times" aria-hidden="true"></i></a></label>
								</section>
								<!-- add -->
								<section class="col col-md-12">
									<label class="label">Question<span class="error">*</span></label>
									<label class="textarea">
										<textarea name="question_<?= $x; ?>" placeholder="Question" maxlength="700"><?= $question->question; ?></textarea>
										<input type="hidden" name="questionId_<?= $x; ?>" value="<?= $question->questionId; ?>">
										</label>
								</section>
							
								<section class="col col-md-12">
								    <label class="select">
								        <select name="questionType_<?= $x; ?>" onchange="questionOpt(this);" class="questionType_<?= $x; ?>" id="que_<?= $x; ?>" >
								            <option value="text" <?= $question->type=='text' ? 'selected="selected"':""; ?> >Text/Comment</option>
								            <option value="radio" <?= $question->type=='radio' ? 'selected="selected"':""; ?>>Radio</option>
								            <option value="checkbox" <?= $question->type=='checkbox' ? 'selected="selected"':""; ?>>Checkbox</option>
								    	</select><i></i>
								 	</label>
								</section>
								<section class="col col-md-12" id="questionOptions_<?= $x; ?>">
									<?php if($question->type!='text'): 
										$option= !empty($question->options) ? json_decode($question->options,true):array();

										?>
										<div class="row">
											<section class="col col-6">
												<label class="input"><input type="text" name="option_<?= $x; ?>" placeholder="option"  maxlength="20" size="20" value="<?= isset($option[0]) ? $option[0] :'';?>"></label>
											</section>
											<section class="col col-6">
												<label class="input"><input type="text" name="option_1_<?= $x; ?>" placeholder="option"  maxlength="20" size="20" value="<?= isset($option[1]) ? $option[1] :'';?>"></label>
											</section>
										</div>
									<?php endif; ?>
								</section>

							</div>
							<?php } }else{ ?>
								<div class="col-md-12 col-sm-12 col-lg-12 elementPro" id="divPro_1">
								<section class="col col-md-12">
									<label class="label"><strong>Question-1</strong><!-- 	<a href="javascript:void(0);" class="btn btn-default btn-circle pull-right removePro"><i class="fa fa-times" aria-hidden="true"></i></a> --></label>
								</section>
								<!-- add -->
								<section class="col col-md-12">
									<label class="label">Question<span class="error">*</span></label>
									<label class="textarea">
										<textarea name="question_1" placeholder="Question" maxlength="700"></textarea>
										<input type="hidden" name="questionId" value="0">
										</label>
								</section>
							
								<section class="col col-md-12">
								    <label class="select">
								        <select name="questionType_1" onchange="questionOpt(this);" class="questionType_1" id="que_1" >
								            <option value="text" selected="">Text/Comment</option>
								            <option value="radio">Radio</option>
								            <option value="checkbox">Checkbox</option>
								    	</select><i></i>
								 	</label>
								</section>
								<section class="col col-md-12" id="questionOptions_1">
								</section>

							</div>
							<?php } ?>
							
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