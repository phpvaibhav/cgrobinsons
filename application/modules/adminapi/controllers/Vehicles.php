<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//General service API class 
class Vehicles extends Common_Admin_Controller{
    
    public function __construct(){
        parent::__construct();
        $this->check_admin_service_auth();
    }
    public function addVehicle_post(){
       
        $this->form_validation->set_rules('year', 'year', 'trim|required');
        $this->form_validation->set_rules('model', 'model', 'trim|required');
        $this->form_validation->set_rules('plate', 'plate', 'trim|required');
        $this->form_validation->set_rules('vin', 'vin', 'trim|required');
        $this->form_validation->set_rules('manufacturer', 'manufacturer', 'trim|required');
        $this->form_validation->set_rules('state', 'state', 'trim|required');
        $this->form_validation->set_rules('color', 'color', 'trim|required');
        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            
        }
        else{
          
				$data_val['year']       	= $this->post('year');
				$data_val['model']       	= $this->post('model');
				$data_val['plate']       	= $this->post('plate');
				$data_val['vin']       		= $this->post('vin');
				$data_val['manufacturer']   = $this->post('manufacturer');
				$data_val['state']      	= $this->post('state');
				$data_val['color']       	= $this->post('color');
				$vehicleId  = decoding($this->post('vid'));

				$where = array('vehicleId'=>$vehicleId);
            	$isExist=$this->common_model->is_data_exists('vehicles',$where);
            	if($isExist){
            		$result = $this->common_model->updateFields('vehicles',$data_val,$where);
            		$msg = "Vehicle record updated successfully.";
            	}else{
            		$result = $this->common_model->insertData('vehicles',$data_val);
            		
            		$msg = "Vehicle record added successfully.";
            	}
                
                if($result){
                  
                     $response = array('status'=>SUCCESS,'message'=>$msg);
                }else{
                     $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));
                } 
             
               
           
        }
        $this->response($response);
    }//end function 
    public function assignDriver_post(){
       
        $this->form_validation->set_rules('driverId', 'driverId', 'trim|required');
        $this->form_validation->set_rules('assignDate', 'assign date', 'trim|required');
      
        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            
        }
        else{
          		$vehicleId  = decoding($this->post('vid'));
				$data_val['driverId']       = $this->post('driverId');
				$data_val['assignDate']     = date("Y-m-d",strtotime($this->post('assignDate')));
				$where = array('vehicleId'=>$vehicleId);
            	$isExist = $this->common_model->is_data_exists('vehicles',$where);
            	
                
                if($isExist){
                	$assignExist = $this->common_model->is_data_exists('assignVehicle',$where);
                  if($assignExist){
            		$result = $this->common_model->updateFields('assignVehicle',$data_val,$where);
            		$msg = "Vehicle assign driver successfully.";
            	}else{
            		$data_val['vehicleId']       = $vehicleId;
            		$result = $this->common_model->insertData('assignVehicle',$data_val);
            		
            		$msg = "Vehicle assign driver successfully.";
            	}
                   $response = array('status'=>SUCCESS,'message'=>$msg);
                }else{
                     $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));
                } 
             
               
           
        }
        $this->response($response);
    }//end function
    public function vehilceList_post(){
        $this->load->helper('text');
        $this->load->model('vehilce_model');
        $this->vehilce_model->set_data();
        $list = $this->vehilce_model->get_list();
        
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $serData) { 
        $action ='';
        $no++;
        $row = array();
        $row[] = $no;
        //$row[] = '<img src='.base_url($serData->profileImage).' alt="user profile" style="height:50px;width:50px;" >';
        $row[] = display_placeholder_text($serData->year); 
        $row[] = display_placeholder_text($serData->manufacturer); 
        $row[] = display_placeholder_text($serData->model); 
        $row[] = display_placeholder_text($serData->vin); 
        $row[] = display_placeholder_text($serData->plate); 
        $row[] = display_placeholder_text($serData->color); 
        $row[] = display_placeholder_text($serData->state); 
        if($serData->status){
        $row[] = '<label class="label label-success">'.$serData->statusShow.'</label>';
        }else{ 
        $row[] = '<label class="label label-danger">'.$serData->statusShow.'</label>'; 
        } 
            $link  ='javascript:void(0)';
            $action .= "";
        if($serData->status){

            $action .= '<a href="'.$link.'" onclick="vehilceStatus(this);" data-message="You want to change status!" data-useid="'.encoding($serData->vehicleId).'"  class="on-default edit-row table_action" title="status"><i class="fa fa-check" aria-hidden="true"></i></a>&nbsp;&nbsp;|';
        }else{
             $action .= '&nbsp;&nbsp;<a href="'.$link.'" onclick="vehilceStatus(this);" data-message="You want to change status!" data-useid="'.encoding($serData->vehicleId).'"  class="on-default edit-row table_action" title="status"><i class="fa fa-times" aria-hidden="true"></i></a>&nbsp;&nbsp;|';
        }
        $link = base_url().'vehicles/vehicleDetail/'.encoding($serData->vehicleId);
        $action .= '&nbsp;&nbsp;<a href="'.$link.'"  class="on-default edit-row table_action" title="Detail"><i class="fa fa-eye" aria-hidden="true"></i></a>';
        

        $row[] = $action;
        $data[] = $row;

        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->vehilce_model->count_all(),
            "recordsFiltered" => $this->vehilce_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
       
        $this->response($output);
    }//end function 
    function vehilceStatus_post(){
        $vehicleId  = decoding($this->post('use'));
    
        $where = array('vehicleId'=>$vehicleId);
         $dataExist=$this->common_model->is_data_exists('vehicles',$where);
        if($dataExist){
            $status = $dataExist->status ?0:1;

             $dataExist=$this->common_model->updateFields('vehicles',array('status'=>$status),$where);
              $showmsg  =($status==1)? "Vehicle request is Active" : "Vehicle request is Inactive";
                $response = array('status'=>SUCCESS,'message'=>$showmsg);
        }else{
           $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));  
        }
        $this->response($response);
    }//end function
 	function vehicleDelete_post(){
        $vehicleId  = decoding($this->post('use'));
   
        $where = array('vehicleId'=>$vehicleId);
         $dataExist=$this->common_model->is_data_exists('vehicles',$where);
        if($dataExist){
              
             $dataExist=$this->common_model->deleteData('vehicles',$where);
              $showmsg  ='Vehicle has been deleted successfully.';
                $response = array('status'=>SUCCESS,'message'=>$showmsg);
        }else{
           $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));  
        }
        $this->response($response);
    }//end function
    

}//End Class 

