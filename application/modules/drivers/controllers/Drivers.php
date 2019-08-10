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
        
        $data['title'] = 'Drivers';
        $count = $this->common_model->get_total_count('users',array('userType' =>2));
        $data['recordSet'] = array('<li class="sparks-info"><h5>Driver<span class="txt-color-blue"><a class="anchor-btn" data-toggle="modal" data-target="#addDriver"><i class="fa fa-plus-square"></i></a></span></h5></li>','<li class="sparks-info"><h5>Drivers PDF<span class="txt-color-blue"><a class="anchor-btn" href="'.base_url().'drivers/driversPdf" target="_blank" ><i class="fa fa-file-pdf-o"></i></a></span></h5></li>','<li class="sparks-info"><h5>Total Drivers <span class="txt-color-darken" id="totalCust"><i class="fa fa-lg fa-fw fa fa-users"></i>&nbsp;'.$count.'</span></h5></li>');
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
        $vehicleId =$this->common_model->getsingle('assignVehicle',array('driverId' =>$result['id']));
        $data['vehicle'] =$this->common_model->getsingle('vehicles',array('vehicleId' =>$vehicleId['vehicleId']));
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
    /*  $userName = "Admin";

      $pdf->Write(0, 'By: '.$userName, '', 0, 'R', true, 0, false, false, 0);*/
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
          $content .= '</table>';
      
          $users =  $this->common_model->getAll('users',array('userType'=>2),'id','desc');

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
 
}