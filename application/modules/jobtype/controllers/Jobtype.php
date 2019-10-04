<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Jobtype extends Common_Back_Controller {

    public $data = "";

    function __construct() {
        parent::__construct();
        $this->check_admin_user_session(); 
    }

    public function index() { 
        
        $data['title'] = 'Job Types';
        $count = $this->common_model->get_total_count('jobType');
        $link = 'javascript:void(0)'; //base_url().'jobtype/addJobtype';
        $data['recordSet'] = array('<li class="sparks-info"><h5>Job Type<span class="txt-color-blue"><a href="'.$link.'" class="anchor-btn"><i class="fa fa-plus-square"></i></a></span></h5></li>','<li class="sparks-info"><h5>Total Job Types <span class="txt-color-darken" id="totalCust"><i class="fa fa-lg fa-fw fa fa-bars"></i>&nbsp;'.$count.'</span></h5></li>');
        $data['front_scripts'] = array('backend_assets/custom/js/jobtype.js');
        $this->load->admin_render('jobtypes', $data);
    }     
    public function addJobtype() { 
        
        $data['title'] = 'Add Job';
      
        $data['jobTypes']        =  $this->common_model->getAll('jobType');
        $data['drivers']         =  $this->common_model->getAll('users',array('userType'=>2,'status'=>1));
        $data['customers']       =  $this->common_model->getAll('users',array('userType'=>1,'status'=>1));
        $data['front_scripts'] = array('backend_assets/custom/js/jobtype.js');
        $this->load->admin_render('addJobtype', $data);
    } 

     public function detail(){
      //pr('admin@admin.com');
        $jobId  = decoding($this->uri->segment(3));

        $data['title'] = "Job Detail";
         $data['recordSet'] = array('<li class="sparks-info"><h5>Job Report<span class="txt-color-blue"><a class="anchor-btn" href="'.base_url().'jobs/jobDetailPdf/'.$this->uri->segment(3).'" target="_blank" ><i class="fa fa-file-pdf-o"></i></a></span></h5></li>');
        $where = array('jobId'=>$jobId);
        $this->load->model('job_model');
        $data['job'] = $this->job_model->jobDetail($jobId);
        $data['jobTypes']        =  $this->common_model->getAll('jobType');
        $data['drivers']         =  $this->common_model->getAll('users',array('userType'=>2,'status'=>1));
        $data['customers']       =  $this->common_model->getAll('users',array('userType'=>1,'status'=>1));
       
        $this->load->admin_render('jobDetail', $data, '');
    } //end function
   
 
}