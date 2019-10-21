<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Vehicles extends Common_Back_Controller {

    public $data = "";

    function __construct() {
        parent::__construct();
        $this->check_admin_user_session();
     
    }

    public function index() { 
        
        $data['title']          = 'Vehicles';
        $count                  = $this->common_model->get_total_count('vehicles');
        $count                  = number_format_short($count);
        $data['recordSet']      = array('<li class="sparks-info"><h5>vehicle<span class="txt-color-blue"><a class="anchor-btn" data-toggle="modal" data-target="#addVehicle"><i class="fa fa-plus-square"></i></a></span></h5></li>','<li class="sparks-info"><h5>Total Vehicles <span class="txt-color-darken" id="totalCust"><i class="fa fa-lg fa-fw fa fa-taxi"></i>&nbsp;'.$count.'</span></h5></li>');
        $data['manufacturers']  =  $this->common_model->getAll('carManufacturers');
        $data['vehicleColors']  =  $this->common_model->getAll('vehicleColors');
        $data['states']         =  $this->common_model->getAll('states');
        $data['front_scripts']  = array('backend_assets/custom/js/vehicle.js');
        $this->load->admin_render('vehicles', $data);
    } 
    public function vehicleDetail(){
      //pr('admin@admin.com');
        $vehicleId                  = decoding($this->uri->segment(3));

        $data['title']              = "Vehicle Detail";
        $where                      = array('vehicleId'=>$vehicleId);
        $result                     = $this->common_model->getsingle('vehicles',$where);
        $data['vehicle']            = $result;
        $data['manufacturers']      =  $this->common_model->getAll('carManufacturers');
        $data['vehicleColors']      =  $this->common_model->getAll('vehicleColors');
        $data['states']             =  $this->common_model->getAll('states');
        $data['drivers']            =  $this->common_model->getAll('users',array('userType' =>2,'status'=>1));
        $data['vehicleJobTypes']    =  $this->common_model->getAll('vehicleJobType',array('status'=>1));
        $data['assignVehicle']      = $this->common_model->getsingle('assignVehicle',$where);
        $data['front_scripts']      = array('backend_assets/custom/js/vehicle.js');
   
        $this->load->admin_render('vehicleDetail', $data, '');
    } 
 
}