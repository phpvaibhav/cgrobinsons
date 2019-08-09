<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//General service API class 
class Jobs extends Common_Service_Controller{
    
    public function __construct(){
        parent::__construct();
        $this->check_service_auth();
        $this->load->model('job_model'); //load image model
    }

    function assignJobs_get(){
        $authCheck  = $this->check_service_auth();
        $authToken  = $this->authData->authToken;
        $userId     = $this->authData->id;
        $userType   = $this->authData->userType;
        $authtoken  = $this->api_model->generate_token();
        switch ($userType) {
            case 1:
             $where =  array('j.customerId'=> $userId);
                break;
            case 2:
              $where =  array('j.driverId'=> $userId);
                break;
            
            default:
                $where =  array();
                break;
        }
        $jobs = $this->job_model->assignJobs($where);
        if(is_array($jobs)){
            $response = array('status' => SUCCESS, 'message' => ResponseMessages::getStatusCodeMessage(114), 'jobs' =>$jobs);
                
        }else{
            $response = array('status' => FAIL, 'message' => ResponseMessages::getStatusCodeMessage(127),'jobs'=>array());
        }   
        $this->response($response);    
    } //End Function    
    function jobDetail_post(){
        $authCheck  = $this->check_service_auth();
        $authToken  = $this->authData->authToken;
        $userId     = $this->authData->id;
        $userType   = $this->authData->userType;
        $authtoken  = $this->api_model->generate_token();
       $this->form_validation->set_rules('jobId', 'jobId', 'trim|required');
        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
           
        }
        else{
            $jobId = $this->post('jobId');
            $jobs = $this->job_model->jobDetail($jobId);
            if($jobs){
                $response = array('status' => SUCCESS, 'message' => ResponseMessages::getStatusCodeMessage(114), 'jobs' =>$jobs);

            }else{
                $response = array('status' => FAIL, 'message' => ResponseMessages::getStatusCodeMessage(127),'jobs'=>new stdClass());
            } 
        }
       
         
        $this->response($response);    
    } //End Function
   
}//End Class 

