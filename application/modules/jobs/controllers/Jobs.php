<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Jobs extends Common_Back_Controller {

    public $data = "";

    function __construct() {
        parent::__construct();
        $this->check_admin_user_session();
     
    }

    public function index() { 
        
        $data['title'] = 'Jobs';
        $count = $this->common_model->get_total_count('jobs');
        $data['recordSet'] = array('<li class="sparks-info"><h5>Job<span class="txt-color-blue"><a class="anchor-btn" data-toggle="modal" data-target="#addJob"><i class="fa fa-plus-square"></i></a></span></h5></li>','<li class="sparks-info"><h5>Total Jobs <span class="txt-color-darken" id="totalCust"><i class="fa fa-lg fa-fw fa fa-tasks"></i>&nbsp;'.$count.'</span></h5></li>');
        $data['jobTypes']        =  $this->common_model->getAll('jobType');
        $data['drivers']         =  $this->common_model->getAll('users',array('userType'=>2,'status'=>1));
        $data['customers']       =  $this->common_model->getAll('users',array('userType'=>1,'status'=>1));
        $this->load->admin_render('jobs', $data);
    } 
    public function jobDetail(){
      //pr('admin@admin.com');
        $jobId  = decoding($this->uri->segment(3));

        $data['title'] = "job Detail";
        $where = array('jobId'=>$jobId);
        $result = $this->common_model->getsingle('jobs',$where);
       
        $this->load->admin_render('jobDetail', $data, '');
    } 
 
}