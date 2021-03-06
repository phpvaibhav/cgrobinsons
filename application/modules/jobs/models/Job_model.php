<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Job_model extends CI_Model {
    var $column_sel = array('j.*',
        'j.jobId',
        'j.jobName',
        'j.points',
        'j.polygonColor',
        'j.jobTypeId',
        'j.driverId',
        'c.fullName as customerName',
        'jt.jobType',
        'd.fullName as driverName',
        'j.customerId',
        'j.jobStatus',
        'j.startDate',
        'j.startTime',
        '(case when (j.jobStatus = 0) 
        THEN "Open" when (j.jobStatus = 1) 
        THEN "In-progress" when (j.jobStatus = 2) 
        THEN "Completed" ELSE
        "Unknown" 
        END) as statusShow',
        '(case when (j.workPriority = 0) 
        THEN "Low" when (j.workPriority = 1) 
        THEN "Medium" when (j.workPriority = 2) 
        THEN "High" ELSE
        "Unknown" 
        END) as priority',
        'j.workPriority');
    
    public function __construct(){
        parent::__construct();
    }
    function  jobDetail($jobId){
        $sel_fields = array_filter($this->column_sel); 
        $this->db->select($sel_fields);
        $this->db->from('jobs as j');
        $this->db->join('jobType as jt','j.jobTypeId=jt.jobTypeId');
        $this->db->join('users as c','c.id=j.customerId','left');
        $this->db->join('users as d','d.id=j.driverId','left');
        $this->db->where('j.jobId',$jobId);
        $sql = $this->db->get();

        if($sql->num_rows()):
            $job        = $sql->row_array();
            $timinig    = $this->db->select('SEC_TO_TIME(SUM(TIME_TO_SEC(timediff(outDateTime, inDateTime)))) as timeDuration')->from('jobTiming')->where(array('jobId'=>$job['jobId'],'inDateTime !='=>'0000-00-00 00:00:00','outDateTime !='=>'0000-00-00 00:00:00'))->order_by('jobTimeId','asc')->group_by('jobId')->get();
            //lq();
            if($timinig->num_rows()){
                $time  = isset($timinig->row()->timeDuration) ? $timinig->row()->timeDuration:"NA";;
            }else{
                 $time = 'NA';
            }
            $job['timeDuration']    = $time;
            $job['geoTimeDuration'] = $this->geoTimeDuration($job['jobId']);
            if($job['geoFencing']==1){
                $geopint                = substr_replace($job['points'],"",-1); 
                $geopint                = trim($geopint);
                $job['geoFencingUrl']   = "https://maps.googleapis.com/maps/api/staticmap?center=".$job['latitude'].",".$job['longitude']."&zoom=auto&scale=1&size=640x500&maptype=satellite&format=png&visual_refresh=true&markers=size:mid%7Ccolor:red%7Clabel:o%7C".$job['latitude'].",".$job['longitude']."&path=fillcolor:0xFEFEFE%7Ccolor:0xFEFEFE|weight:2|".$geopint."&key=".GOOGLE_API_KEY;
            }else{
                $job['geoFencingUrl'] = ""; 
            }
            return $job;
        endif;
        return false;
    }//end function 
    function  assignJobs($where=array()){
        $sel_fields = array_filter($this->column_sel); 
        $this->db->select($sel_fields);
        $this->db->from('jobs as j');
        $this->db->join('jobType as jt','j.jobTypeId=jt.jobTypeId');
        $this->db->join('users as c','c.id=j.customerId','left');
        $this->db->join('users as d','d.id=j.driverId','left');
        !empty($where) ? $this->db->where($where) :"";
        $this->db->order_by('DATE(j.upd)','desc');
        $sql = $this->db->get();
        if($sql->num_rows()):
            return $sql->result();
        endif;
        return false;
    } //end function 
    function jobTypeQuetions($jobId,$jobTypeId){
        $array = array();
        $this->db->select('q.questionId,q.question,q.type,q.options,ans.answerId,ans.answer');
        $this->db->from('jobTypeQuestions as q');
        $this->db->join('jobQuestionAnswer ans','ans.questionId=q.questionId','left');
        $this->db->where(array('ans.jobId'=>$jobId,'q.jobTypeId'=>$jobTypeId));
        $this->db->order_by('q.questionId','asc');
        $sql=$this->db->get();
        if($sql->num_rows()){
            $array = $sql->result();
        }
        return $array; 
    }//end function
    function geoTimeDuration($jobId){
        $timeing = array();
        $time    = $this->db->select('jobId,
            inDateTime,
            outDateTime,
            SEC_TO_TIME(TIME_TO_SEC(timediff(outDateTime, inDateTime))) as timeDuration,
            (case when (inDateTime = "0000-00-00 00:00:00") 
        THEN "-" ELSE
        inDateTime 
        END) as startTime,
        (case when (outDateTime = "0000-00-00 00:00:00") 
        THEN "Progress" ELSE
        outDateTime 
        END) as endTime')->from('jobTiming')->where(array('jobId'=>$jobId))->order_by('jobTimeId','asc')->get();
        if($time->num_rows()){
            $timeing = $time->result();

        }
        $timinigT    = $this->db->select('SEC_TO_TIME(SUM(TIME_TO_SEC(timediff(outDateTime, inDateTime)))) as timeDuration')->from('jobTiming')->where(array('jobId'=>$jobId,'inDateTime !='=>'0000-00-00 00:00:00','outDateTime !='=>'0000-00-00 00:00:00'))->order_by('jobTimeId','asc')->get();
        $timeT = 'NA';
        if($timinigT->num_rows()){
            $timeT = isset($timinigT->row()->timeDuration) ? $timinigT->row()->timeDuration:"NA";;
        }else{
            $timeT = 'NA';
        }
        return array('timinig'=>$timeing,'total'=>$timeT);
    }//end Function
}//Class Function 