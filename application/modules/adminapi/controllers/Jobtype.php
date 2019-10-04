<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//General service API class 
class Jobtype extends Common_Admin_Controller{
    
    public function __construct(){
        parent::__construct();
        $this->check_admin_service_auth();
    }
    public function createJobtype_post(){
       
        $this->form_validation->set_rules('jobType', 'jobType', 'trim|required|is_unique[jobType.jobType]', array('is_unique' => 'Job type already exist'));
       
        
        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            
        }
        else{
      
                $data_val['jobtype']       = $this->post('jobtype');
             
               
                $jobTypeId  = decoding($this->post('jobTypeId'));

                $where = array('jobTypeId'=>$jobTypeId);
               
                $isExist=$this->common_model->is_data_exists('jobType',$where);

                if($isExist){
                    $result = $this->common_model->updateFields('jobType',$data_val,$where);
                    $result =  $isExist->jobId;
                    $msg = "Job type record updated successfully.";
                }else{
                    $result = $this->common_model->insertData('jobType',$data_val);
                    
                    $msg = "Job type created successfully.";
                }
                //$jobId = $this->common_model->insertData('jobs',$data_val);
                if($result){
             
                     $response = array('status'=>SUCCESS,'message'=>$msg);
                }else{
                     $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));
                }  
        }
        $this->response($response);
    }//end function
 
    public function jobtypeList_post(){
        $this->load->helper('text');
        $this->load->model('jobtype_model');
        $this->jobtype_model->set_data();
        $list = $this->jobtype_model->get_list();
        
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $serData) { 
        $action ='';
        $no++;
        $row = array();
         $jobLink = base_url().'jobtype/jobtypeDetail/'.encoding($serData->jobTypeId);
        $row[] = $no;
        //$row[] = '<img src='.base_url($serData->profileImage).' alt="user profile" style="height:50px;width:50px;" >';
        $row[] = '<a href="'.$jobLink.'"  class="on-default edit-row table_action">'.display_placeholder_text($serData->jobType).'</a>'; 

        switch ($serData->status) {
            case 2:
               $row[] = '<label class="label label-success">'.$serData->statusShow.'</label>';
                break;
            case 1:
               $row[] = '<label class="label label-danger">'.$serData->statusShow.'</label>';
                break;
            case 0:
               $row[] = '<label class="label label-warning">'.$serData->statusShow.'</label>';
                break;
            
            default:
                  $row[] = '<label class="label label-warning">'.$serData->statusShow.'</label>';
                break;
        }
       
            $link  ='javascript:void(0)';
            $action .= "";
       
               if($serData->status){

            $action .= '<a href="'.$link.'" onclick="jobTypeStatus(this);" data-message="You want to change status!" data-useid="'.encoding($serData->jobTypeId).'"  class="on-default edit-row table_action" title="status"><i class="fa fa-check" aria-hidden="true"></i></a>';
        }else{
             $action .= '<a href="'.$link.'" onclick="jobTypeStatus(this);" data-message="You want to change status!" data-useid="'.encoding($serData->jobTypeId).'"  class="on-default edit-row table_action" title="status"><i class="fa fa-times" aria-hidden="true"></i></a>';
        }
       // $userLink = "javascript:void(0);";
/*        $action .= '&nbsp;&nbsp;|&nbsp;&nbsp;<a href="'.$jobLink.'"  class="on-default edit-row table_action" title="Detail"><i class="fa fa-eye" aria-hidden="true"></i></a>';*/


            

        $row[] = $action;
        $data[] = $row;

        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->jobtype_model->count_all(),
            "recordsFiltered" => $this->jobtype_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
       
        $this->response($output);
    }//end function 
 
    function jobTypeStatus_post(){
        $jobTypeId  = decoding($this->post('use'));
        $status  =$this->post('status');
    
        $where = array('jobTypeId'=>$jobTypeId);
         $dataExist=$this->common_model->is_data_exists('jobType',$where);
        if($dataExist){
            $status = $dataExist->status ? 0:1;
             $dataExist=$this->common_model->updateFields('jobType',array('status'=>$status),$where);
              $showmsg  =($status==1) ? "Job type request is Active" : "Job type request is Inactive";
                $response = array('status'=>SUCCESS,'message'=>$showmsg);
        }else{
           $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));  
        }
        $this->response($response);
    }//end function

    function jobTypeDelete_post(){
        $jobTypeId  = decoding($this->post('use'));
     
    
        $where = array('jobTypeId'=>$jobTypeId);
         $dataExist=$this->common_model->is_data_exists('jobType',$where);
        if($dataExist){
           
             $dataExist=$this->common_model->deleteData('jobType',$where);
              $showmsg  ="Job type has been deleted successfully.";
                $response = array('status'=>SUCCESS,'message'=>$showmsg);
        }else{
           $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));  
        }
        $this->response($response);
    }//end function
  
}//End Class 

