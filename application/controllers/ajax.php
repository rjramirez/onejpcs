<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ajax extends CI_Controller {

 function __construct()
 {
   parent::__construct();
   $this->load->model('user_model','',TRUE);
 }

 public function show_all()
 {
    $all_users = $this->user_model->show_all();
    echo json_encode($all_users);
 }

 public function child_action()
 {
    $action = $this->input->get('action');
    $Id = $this->input->get('Id');
    $StudentNo = $this->input->get('StudentNo');
    $Email = $this->input->get('Email');
    $Course = $this->input->get('Course');
    $Gender = $this->input->get('Gender');
    $ContactNo = $this->input->get('ContactNo');
    $YearOfMembership = $this->input->get('YearOfMembership');
    $Role = $this->input->get('Role');
    $Status = $this->input->get('Status');
    $jtStartIndex = $this->input->get('jtStartIndex');
    $jtPageSize = $this->input->get('jtPageSize');
    $jtSorting = $this->input->get('jtSorting');

    switch($action){
    case 'list':
      $specific_users = $this->user_model->show_child($Id, $jtStartIndex, $jtPageSize, $jtSorting);
    break;
    case 'reset':
      $specific_users = $this->user_model->reset_pass($Id, $Email);
    break;
    case 'update':
      $specific_users = $this->user_model->update_child($Id, $StudentNo, $Course, $Gender, $ContactNo, $YearOfMembership, $Role, $Status);
    break;
    default:
      $specific_users = $this->user_model->show_child($jtStartIndex, $jtPageSize, $jtSorting);
   }
   echo json_encode($specific_users);

 }

 public function verify_user()
 {

   $inputEmail = $this->input->post('inputemail');
   $inputPassword = $this->input->post('inputpassword');

   $result = $this->user_model->login($inputEmail, $inputPassword);
   $message="";

   if($result=="emaildoesnotexist"){//Email doesnt exist
      $message = "E-Mail doesn't exists.";
   }elseif($result=="invalidpassword"){//Invalid Password
          $message = "Invalid Password.";
   }elseif($result=="invalidlogin"){
   		 $message = "Invalid Login";
   }else{
        $Status = "";
        $sess_array = array();
	     foreach($result as $row){
	       $sess_array = array(
	         'StudentNo' => $row->StudentNo,
	         'email' => $row->Email,
	         'firstName' => $row->FirstName,
           'role' => $row->Role
	       );
         $Status = $row->Status;
	     }

     
     if($Status=="Enabled"){
        $this->session->set_userdata('logged_in', $sess_array);
        $message = "success";
     }else{
        $message = "Account Inactive<br>Please contact any of our JPCS Officer<br>
        For more updates <a href='https://www.facebook.com/jpcsfeueacpage' target='blank'>Click here</a>
        ";
     }

      
  }
  echo $message;
 }
 

 public function live_check_email()
 {

   $Email = $this->input->get('Email');
   if($this->user_model->check_exists_email($Email)==TRUE){
      echo json_encode(FALSE);
   }else{
      echo json_encode(TRUE);
   }

 }

  public function live_check_password()
 {
   $Password = $this->input->post('password1');
   $StudentNo = $this->input->post('StudentNo');

   if($this->user_model->check_current_pass($Password, $StudentNo)==TRUE){
      echo json_encode(FALSE);
   }else{
      echo json_encode(TRUE);
   }
 }

  public function live_check_studentno()
 {

   $StudentNo = $this->input->get('StudentNo');
   if($this->user_model->check_exists_studentno($StudentNo)==TRUE){
      echo json_encode(FALSE);
   }else{
      echo json_encode(TRUE);
   }

 }

 public function update_status()
 {
   $Id = $this->input->post('Id');
   $Status = $this->input->post('Status');
   $StudentNo = $this->input->post('StudentNo');
   $FirstName = $this->input->post('FirstName');
   $MiddleName = $this->input->post('MiddleName');
   $LastName = $this->input->post('LastName');
   $Course = $this->input->post('Course');
   $Email = $this->input->post('Email');

   $result = $this->user_model->update_status($Id, $Status);
  
   $response = ($result==1 ? true : false);
   echo json_encode($response);
 }

 public function reset_pass()
 {
   $Email = $this->input->post('Email');
   $result = $this->user_model->reset_pass($Email);
  
   $response = ($result==1 ? true : false);
   echo json_encode($response);
 }

 public function update_password()
 {
   $Password = $this->input->post('Password');
   $StudentNo = $this->input->post('StudentNo');
   $result = $this->user_model->update_pass($StudentNo, $Password);
  
   $response = ($result==1 ? true : false);
   echo json_encode($response);
 }

 public function submit_registration_form()
 {

   $StudentNo = $this->input->get('StudentNo');
   $FirstName = $this->input->get('FirstName');
   $MiddleName = $this->input->get('MiddleName');
   $LastName = $this->input->get('LastName');
   $Course = $this->input->get('Course');
   $TypeOfMem = $this->input->get('TypeOfMem');
   $Gender = $this->input->get('Gender');
   $ContactNo = $this->input->get('ContactNo');
   $Email = $this->input->get('Email');
   $Password = $this->input->get('Password');

   $result = $this->user_model->register_user($StudentNo, $FirstName, $MiddleName, $LastName, $Course, $TypeOfMem, $Gender, $ContactNo, $Email, $Password);

   if($result==1){
   	  echo json_encode(true);
   }else{
      echo json_encode(false);
   }

 }

}
?>
