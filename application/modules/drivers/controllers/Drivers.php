<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Drivers extends Common_Back_Controller {

    public $data = "";

    function __construct() {
        parent::__construct();
        $this->check_admin_user_session();
     
    }

    public function index() { 
        
        $data['title'] = 'Drivers';
        $count = $this->common_model->get_total_count('users',array('userType' =>2));
        $data['recordSet'] = array('<li class="sparks-info"><h5>Driver<span class="txt-color-blue"><a class="anchor-btn" data-toggle="modal" data-target="#addDriver"><i class="fa fa-plus-square"></i></a></span></h5></li>','<li class="sparks-info"><h5>Total Drivers <span class="txt-color-darken" id="totalCust"><i class="fa fa-lg fa-fw fa fa-users"></i>&nbsp;'.$count.'</span></h5></li>');
        $this->load->admin_render('drivers', $data);
    } 
    public function driverDetail(){
      //pr('admin@admin.com');
        $userId  = decoding($this->uri->segment(3));

        $data['title'] = "Driver Detail";
        $where = array('id'=>$userId);
        $result = $this->common_model->getsingle('users',$where);
        $data['driver'] = $result;
        $data['drivermeta'] =$this->common_model->getsingle('driverMeta',array('userId' =>$result['id']));
        $this->load->admin_render('driverDetail', $data, '');
    } 
 
}