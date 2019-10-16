    <!-- widget grid -->
        <section id="widget-grid" class="">
        
           <!-- Widgets -->
            <div class="row clearfix">
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                  <a href="<?php echo base_url('customers'); ?>">
                    <div class="info-box bg-pink hover-expand-effect">
                        <div class="icon">
                            <i class="fa fa-users"></i>
                        </div>
                        <div class="content">
                            <div class="text">Customers</div>
                            <div class="number count-to"><?php echo $customers; ?></div>
                        </div>
                    </div>
                  </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                  <a href="<?php echo base_url('drivers'); ?>">
                    <div class="info-box bg-cyan hover-expand-effect">
                        <div class="icon">
                            <i class="fa fa-users"></i>
                        </div>
                        <div class="content">
                            <div class="text">Drivers</div>
                            <div class="number count-to"><?php echo $drivers; ?></div>
                        </div>
                    </div>
                  </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                  <a href="<?php echo base_url('jobs'); ?>">
                    <div class="info-box bg-light-green hover-expand-effect">
                        <div class="icon">
                            <i class="fa fa-tasks"></i>
                        </div>
                        <div class="content">
                            <div class="text">Jobs</div>
                            <div class="number count-to"><?php echo $jobs; ?></div>
                        </div>
                    </div>
                  </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                  <a href="<?php echo base_url('vehicles'); ?>">
                    <div class="info-box bg-orange hover-expand-effect">
                        <div class="icon">
                            <i class="fa fa-taxi"></i>
                        </div>
                        <div class="content">
                            <div class="text">Vehicles</div>
                            <div class="number count-to"><?php echo $vehicles; ?></div>
                        </div>
                    </div>
                  </a>
                </div>   
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                  <a href="<?php echo base_url('jobtype'); ?>">
                    <div class="info-box bg-blue hover-expand-effect">
                        <div class="icon">
                            <i class="fa fa-bars"></i>
                        </div>
                        <div class="content">
                            <div class="text">Job Types</div>
                            <div class="number count-to"><?php echo $jobType; ?></div>
                        </div>
                    </div>
                  </a>
                </div>
            </div>
            <!-- #END# Widgets -->
        
        </section>
        <!-- end widget grid -->