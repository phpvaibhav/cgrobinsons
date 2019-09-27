<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Job_model extends CI_Model {
    var $column_sel = array('j.*','j.jobId','j.jobName','j.points','j.polygonColor','j.jobTypeId','j.driverId','c.fullName as customerName','jt.jobType','d.fullName as driverName','j.customerId','j.jobStatus','j.startDate','j.startTime','(case when (j.jobStatus = 0) 
        THEN "Open" when (j.jobStatus = 1) 
        THEN "In-progress" when (j.jobStatus = 2) 
        THEN "Completed" ELSE
        "Unknown" 
        END) as statusShow');
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
            $job =$sql->row_array();
           
            $timinig = $this->db->select('TIME(SUM(TIMEDIFF(outDateTime,inDateTime))) as timeDuration')->from('jobTiming')->where(array('jobId'=>$job['jobId'],'inDateTime !='=>'0000-00-00 00:00:00','outDateTime !='=>'0000-00-00 00:00:00'))->order_by('jobTimeId','asc')->get();
            if($timinig->num_rows()){
                $time = isset($timinig->row()->timeDuration) ? $timinig->row()->timeDuration:"NA";;
            }else{
                 $time = 'NA';
            }
            $job['timeDuration'] = $time;
            if($job['geoFencing']==1){
                 $geopint = substr_replace($job['points'],"",-1); 
                        $geopint = trim($geopint);
            $job['geoFencingUrl'] = "https://maps.googleapis.com/maps/api/staticmap?center=".$job['latitude'].",".$job['longitude']."&zoom=auto&scale=1&size=640x500&maptype=satellite&format=png&visual_refresh=true&markers=size:mid%7Ccolor:red%7Clabel:o%7C".$job['latitude'].",".$job['longitude']."&path=fillcolor:0xAA000033%7Ccolor:0xFF0000|weight:1|".$geopint."&key=".GOOGLE_API_KEY;
            }else{
                $job['geoFencingUrl'] = ""; 
            }
           

            return $job;
        endif;
        return false;
    }//
    function  assignJobs($where=array()){
        $sel_fields = array_filter($this->column_sel); 
        $this->db->select($sel_fields);
        $this->db->from('jobs as j');
        $this->db->join('jobType as jt','j.jobTypeId=jt.jobTypeId');
        $this->db->join('users as c','c.id=j.customerId','left');
        $this->db->join('users as d','d.id=j.driverId','left');
        !empty($where) ? $this->db->where($where) :"";
        $sql = $this->db->get();
        if($sql->num_rows()):
            return $sql->result();
        endif;
        return false;
    } //end function 
   


}//Function 