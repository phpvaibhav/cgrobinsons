<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Drivers extends Common_Back_Controller {

    public $data = "";

    function __construct() {
        parent::__construct();
        $this->check_admin_user_session();
        $this->load->library('pdf');
    }

    public function index() { 
        
        $data['title']      = 'Drivers';
        $count              = $this->common_model->get_total_count('users',array('userType' =>2));
        $count              = number_format_short($count);
        $data['recordSet']  = array('<li class="sparks-info"><h5>Driver<span class="txt-color-blue"><a class="anchor-btn" data-toggle="modal" data-target="#addDriver"><i class="fa fa-plus-square"></i></a></span></h5></li>','<li class="sparks-info"><h5>Drivers PDF<span class="txt-color-blue"><a class="anchor-btn" href="'.base_url().'drivers/driversPdf" target="_blank" ><i class="fa fa-file-pdf-o"></i></a></span></h5></li>','<li class="sparks-info"><h5>Total Drivers <span class="txt-color-darken" id="totalCust"><i class="fa fa-lg fa-fw fa fa-users"></i>&nbsp;'.$count.'</span></h5></li>');
        $data['front_scripts'] = array('backend_assets/custom/js/driver.js');
        $this->load->admin_render('drivers', $data);
    } 
    public function driverDetail(){
      //pr('admin@admin.com');
        $userId             = decoding($this->uri->segment(3));
        $data['title']      = "Driver Detail";
        $data['recordSet']  = array('<li class="sparks-info"><h5>Driver PDF<span class="txt-color-blue"><a class="anchor-btn" href="'.base_url().'drivers/driverDetailPdf/'.$this->uri->segment(3).'" target="_blank" ><i class="fa fa-file-pdf-o"></i></a></span></h5></li>');
        $where              = array('id'=>$userId);
        $result             = $this->common_model->getsingle('users',$where);
        $data['driver']     = $result;
        $data['drivermeta'] = $this->common_model->getsingle('driverMeta',array('userId' =>$result['id']));
        $vehicleId          = $this->common_model->getsingle('assignVehicle',array('driverId' =>$result['id']));
        $data['vehicle']    = $this->common_model->getsingle('vehicles',array('vehicleId' =>$vehicleId['vehicleId']));
        $data['front_scripts'] = array('backend_assets/custom/js/driver.js');
        $this->load->admin_render('driverDetail', $data, '');
    } 
    public function driversPdf()
   {

    ob_start();
    // create new PDF document
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

      // set document information
      $pdf->SetCreator(PDF_CREATOR);
      $pdf->SetAuthor('CGRobinsons');
      $pdf->SetTitle('Drivers Information');
      $pdf->SetSubject('CGRobinsons');
      $pdf->SetKeywords('CGRobinsons');

      // set default header data
      //$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.'', PDF_HEADER_STRING);
      //$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH);
        $pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.'', PDF_HEADER_STRING);
      // set header and footer fonts
      $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
      $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

      // set default monospaced font
      $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

      // set margins
      $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
      $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
      $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

      // set auto page breaks
      $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

      // set image scale factor
      $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

      // set some language-dependent strings (optional)
      if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
         require_once(dirname(__FILE__).'/lang/eng.php');
         $pdf->setLanguageArray($l);
      }
      // ---------------------------------------------------------

      // set font
      $pdf->SetFont('helvetica', 'N', 10);

      // add a page
      $pdf->AddPage();
        // print a line
        $pdf->Cell(0, 12, 'Drivers',0, 0, 'C');

        $pdf->Ln(5);
         $pdf->Ln(5);
      $pdf->Write(0, 'Date: '. date('m/d/Y') , '', 0, 'L', false, 0, true, false, 0);
     

      // Logged in username
    ///*  $userName = "Admin";
  $userName = $_SESSION[ADMIN_USER_SESS_KEY]['fullName'];

      $pdf->Write(0, 'By: '.$userName, '', 0, 'R', true, 0, false, false, 0);
        $pdf->Ln(5);
       
      $pdf->SetFont('helvetica', '', 9);
      // -----------------------------------------------------------------------------
      $content = '';
      
     
        $content .= '
            
            <table border="0" cellspacing="1" cellpadding="4">
                <tr style="background-color:#707070;color:#FFFFFF;"  nobr="true">
                <th>Driver Name</th>
                <th>Email</th>
                <th>Contact Number</th>
                
                </tr>';
            //$content .= $this->fetch_employeePdf_info();
         // $content .= '</table>';
      
          $users =  $this->common_model->getAll('users',array('userType'=>2),'id','desc');
       if(!empty($users)){     
       foreach ($users as $k => $user) {
        if($k++%2 == 1){
             $colr = "background-color:#f1f1f1;";
         }else{
            $colr = "background-color:#fff;";
         }
                    
           $content .='<tr nobr="true" style="color:#000; '.$colr.'">';
           $content .='<td>'.$user->fullName.'</td>';
           $content .='<td>'.$user->email.'</td>';
           $content .='<td>'.$user->contactNumber.'</td>';
       
          
           $content .='</tr>';
       }
 }else{
           $colr = "background-color:#f1f1f1;";
         $content .='<tr nobr="true" style="color:#000; '.$colr.'">';
          $content .='<td colspan="3" align="center">No driver found.</td>';
         
          $content .='</tr>';
        } 
        $content .='</table>';
        $pdf->writeHTML($content, true, false, true, false, '');
        // reset pointer to the last page
        $pdf->lastPage();
        $fileName = "customers-".strtotime(date("Y-m-d H:i:s")).".pdf";
        $pdf->Output($fileName, 'I');
        ob_end_flush();
      //Close and output PDF document


      //============================================================+
      // END OF FILE
      //============================================================+
   }
   // End job PFD 
    function driverDetailPdf(){
       $userId  = decoding($this->uri->segment(3));
       $where = array('id'=>$userId);
        $driver = $this->common_model->getsingle('users',$where);

        $drivermeta =$this->common_model->getsingle('driverMeta',array('userId' =>$driver['id']));
        $vehicleId =$this->common_model->getsingle('assignVehicle',array('driverId' =>$driver['id']));
        $vehicle =$this->common_model->getsingle('vehicles',array('vehicleId' =>$vehicleId['vehicleId']));
    
        $this->load->model('jobs/job_model');
       $jobs = $this->job_model->assignJobs(array('j.driverId'=>$userId));
       ob_start();
      // create new PDF document

      $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

      // set document information
      $pdf->SetCreator(PDF_CREATOR);
      $pdf->SetAuthor('Driver Detail');
      $pdf->SetTitle('Driver Information');
      $pdf->SetSubject('Driver Services');
      $pdf->SetKeywords('CGRobinsons');

      // set default header data
      //$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.'', PDF_HEADER_STRING);
      //$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH);
        $pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.'', PDF_HEADER_STRING);
      // set header and footer fonts
      $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
      $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

      // set default monospaced font
      $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

      // set margins
      $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
      $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
      $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

      // set auto page breaks
      $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

      // set image scale factor
      $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

      // set some language-dependent strings (optional)
      if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
         require_once(dirname(__FILE__).'/lang/eng.php');
         $pdf->setLanguageArray($l);
      }
      // ---------------------------------------------------------

      // set font
      $pdf->SetFont('helvetica', 'N', 10);

      // add a page
      $pdf->AddPage();
        // print a line
        $pdf->Cell(0, 12, 'DRIVER DETAIL',0, 0, 'C');

        $pdf->Ln(5);
         $pdf->Ln(5);
      $pdf->Write(0, 'Date: '. date('m/d/Y') , '', 0, 'L', false, 0, true, false, 0);
     

      // Logged in username
     $userName = $_SESSION[ADMIN_USER_SESS_KEY]['fullName'];

      $pdf->Write(0, 'By: '.$userName, '', 0, 'R', true, 0, false, false, 0);
        $pdf->Ln(5);
       
      $pdf->SetFont('helvetica', '', 9);
      // -----------------------------------------------------------------------------
        $content = '';
        //$img =  base_url().'backend_assets/img/avatars/sunny-big.png';
        $img = base_url().'backend_assets/img/avatars/av1.jpg';
        if(!empty($driver['profileImage'])):
        $img = base_url().'uploads/users/thumb/'.$driver['profileImage'];
        endif;
        $content .= '<table  border="0" cellspacing="1" cellpadding="3" bgcolor="#EAECF0">';

        $content .= '<tr  bgcolor="#cccccc"><th align="left" colspan="4"><b>Driver Information</b></th></tr>';
        $content .= '<tr  bgcolor="#EAECF0">';
          $content .= '<td rowspan="4">
        <span><img src="'.$img.'" alt="" width="95" height="95" border="0" /></span>
        </td>';
           $content .= '<td><strong>Driver Name</strong> :</td><td colspan="2">'.$driver['fullName'].'</td>';
  
        $content .= '</tr>';   
        $content .= '<tr  bgcolor="#EAECF0">';
      
         
          $content .= '<td><strong>Email</strong> :</td><td colspan="2">'.$driver['email'].'</td>';
        $content .= '</tr>'; 
        $content .= '<tr  bgcolor="#EAECF0">';
          $content .= '<td><strong>Contact Number</strong> :</td><td colspan="2">'.$driver['contactNumber'].'</td>';
        $content .= '</tr>'; 
$content .= '<tr  bgcolor="#EAECF0">';
          $content .= '<td><strong>Date of Birth</strong> :</td><td colspan="2">'.date('d M Y',strtotime($drivermeta['dob'])).'</td>';
        $content .= '</tr>'; 

          $content .= '<tr  bgcolor="#cccccc"><th align="left" colspan="2"><b>Basic Information</b></th><th align="left" colspan="2"><b>Emergency Person Information</b></th></tr>';

        $content .= '<tr>';
        $content .= '<td><strong>Date of Hire</strong> :</td><td>'.date('d M Y',strtotime($drivermeta['doh'])).'</td>';
        $content .= '<td><strong>Person Name</strong> :</td><td>'.$drivermeta['emergencyPersonName'].'</td>';
        $content .= '</tr>';
        $content .= '<tr>';
        $content .= '<td><strong>License Number</strong> :</td><td>'.$drivermeta['licenseNumber'].'</td>';
        $content .= '<td><strong>Person Number</strong> :</td><td>'.$drivermeta['emergencyPersonNumber'].'</td>';
        $content .= '</tr>';
        $content .= '<tr>';
        $content .= '<td><strong>License Expiry Date</strong> :</td><td colspan="3">'.date("d M Y",strtotime($drivermeta['licenseExpiryDate'])).'</td>';     
        $content .= '</tr>';
        $content .= '<tr>';
    
        $content .= '<td><strong>Address</strong> :</td><td colspan="3">'.$drivermeta['address'].'</td>';
        $content .= '</tr>';
          
        $content .= '<tr  bgcolor="#cccccc"><th align="left" colspan="4"><b>Vehicle Information</b></th></tr>'; 
        if(isset($vehicle) && !empty($vehicle)):
          $content .= '<tr>';
          $content .= '<td><strong>Year</strong> :</td><td>'.(isset($vehicle['year'])? $vehicle['year']:"NA").'</td>';
          $content .= '<td><strong>Manufacturer</strong> :</td><td>'.(isset($vehicle['manufacturer'])? $vehicle['manufacturer'] :"NA").'</td>';
          $content .= '</tr>';
          $content .= '<tr>';
          $content .= '<td><strong>Model</strong> :</td><td>'.(isset($vehicle['model'])? $vehicle['model']:"NA").'</td>';
          $content .= '<td><strong>Vin</strong> :</td><td>'.(isset($vehicle['vin'])? $vehicle['vin'] :"NA").'</td>';
          $content .= '</tr>';
          $content .= '<tr>';
          $content .= '<td><strong>Plate</strong> :</td><td>'.(isset($vehicle['plate'])? $vehicle['plate']:"NA").'</td>';
          $content .= '<td><strong>Color</strong> :</td><td>'.(isset($vehicle['color'])? $vehicle['color'] :"NA").'</td>';
          $content .= '</tr>';
        else:
           $content .= '<tr>';
          $content .= '<td colspan="4"><p align="center">No vehicle found</p></td>';
         
          $content .= '</tr>';
         
        endif; 
  /*<td colspan="4">
        
         
          <p><strong>Address</strong><span align="right" >&nbsp;&nbsp;'.$drivermeta['address'].'</span></p>
       
         
          </td>*/
        $content .='</table>';
         $content .= '<table  border="0" cellspacing="1" cellpadding="4">';
        $content .= '<tr  bgcolor="#cccccc"><th align="left" colspan="7"><b>Driver Assign Jobs</b></th></tr>';
        $content .= '<tr  bgcolor="#EAECF0"><th width="5%"><b>#</b></th><th><b>Job Name</b></th><th><b>Job Type</b></th><th><b>Customer</b></th><th><b>Driver</b></th><th width="23.5%"><b>Creation Date</b></th><th><b>Status</b></th></tr>';
       // pr($jobs);
        if(!empty($jobs)):
          for ($i=0; $i <sizeof($jobs) ; $i++) { 
             $content .= '<tr>';
              $content .= '<td>'.($i+1).'</td>';
              $content .= '<td>'.$jobs[$i]->jobName.'</td>';
              $content .= '<td>'.$jobs[$i]->jobType.'</td>';
              $content .= '<td>'.$jobs[$i]->customerName.'</td>';
              $content .= '<td>'.$jobs[$i]->driverName.'</td>';
              $content .= '<td>'.date("d/m/Y",strtotime($jobs[$i]->startDate))." ".$jobs[$i]->startTime.'</td>';
           
              $content .= '<td><span style="color:green;">'.$jobs[$i]->statusShow.'</span></td>';
              $content .= '</tr>';
          }
        else :
          $content .= '<tr>';
            $content .= '<td colspan="7"><p align="center">No record found</p></td>';
          $content .= '</tr>';
        endif;
     


        $content .='</table>';
  

       
        $pdf->writeHTML($content, true, false, true, false, '');
        // reset pointer to the last page
        $pdf->lastPage();
        $fileName = "cg-".$driver['fullName'].strtotime(date("Y-m-d H:i:s")).".pdf";
       // $pdf->Output($fileName, 'I');
        // $pdf->Output($fileName,'D');
        $pdf->Output($fileName, 'I');
        ob_end_flush();
      //Close and output PDF document


      //============================================================+
      // END OF FILE
      //============================================================+
  }//end function
 
}