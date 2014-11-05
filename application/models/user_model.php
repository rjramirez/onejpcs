<?php
Class User_Model extends CI_Model
{

  function __construct()
  {
      parent::__construct();
  }

 public function login($inputEmail, $inputPassword)
 {

   $encryptedPass = sha1($inputPassword);
   $queryEmailExist = $this->db->query('select * from tb_members where Email = "'.$inputEmail.'"');
   $queryMatchEmailPass = $this->db->query('select StudentNo, FirstName, Email, Password, Role, Status  from tb_members
    where Email = "'.$inputEmail.'" and Password = "'.$encryptedPass.'" limit 1');

   $this->load->helper('email');

   $message="";

     if(valid_email($inputEmail) AND $inputPassword){
       if($queryEmailExist->num_rows() == 0){
           $message = "emaildoesnotexist";
       }else{//Tama ang E-Mail
          if($queryMatchEmailPass->num_rows() == 1){
           $message = $queryMatchEmailPass->result();
          }else{ 
           $message = "invalidpassword";
          }
       }
     }else{
      $message = "invalidlogin";
     }
     error_reporting(0);
     $queryEmailExist->free_result();
     $queryMatchEmailPass->free_result();
     return $message;
 }
 public function getMembersDetails($StudentNo)
 {
   $data = $this->db->query("select * from tb_members where StudentNo = '".$StudentNo."'");
   $result = $data->result();
   $data->free_result();
   return $result;
 }

 public function show_all()
 {

    $data = $this->db->query('select Id as DT_RowId, StudentNo, LastName, FirstName, MiddleName, Email, Course, Status, Gender, ContactNo from tb_members');
    $output['aaData'] = $data->result(); 
    $data->free_result();
    return $output;

 }

 public function show_filtered($filterinput, $jtStartIndex, $jtPageSize, $jtSorting)
 {

    $data = $this->db->query('select Id, StudentNo, LastName, FirstName, MiddleName, Course, Email, Status from tb_members where StudentNo like "%'.$filterinput.'%" or LastName like "%'.$filterinput.'%" or FirstName like "%'.$filterinput.'%" or MiddleName like "%'.$filterinput.'%" or Email like "%'.$filterinput.'%" order by '.$jtSorting.' limit '.$jtStartIndex.', '.$jtPageSize.'');
    $output['Result'] = "OK";
    $output['Records'] = $data->result();
    $output['TotalRecordCount'] = $this->db->affected_rows();
    $data->free_result();
    return $output;
 }


 public function update_record($Id, $StudentNo, $LastName, $FirstName, $MiddleName, $Email, $Status)
 {
    $update_data = array('StudentNo' => $StudentNo, 'LastName' => $LastName, 'FirstName' => $FirstName,'MiddleName' => $MiddleName, 'Email' => $Email, 'Status' => $Status); 
    $this->db->where('Id', $Id);
    $this->db->update('tb_members', $update_data); 

    $result['Result'] = "OK";
    $result['Records'] = $this->db->affected_rows();
    return $result;
 }

 public function show_child($Id, $jtStartIndex, $jtPageSize, $jtSorting)
 {
    $data = $this->db->query('select Id, Email, Password, Course, Gender, ContactNo, YearOfMembership, Role from tb_members where Id = '.$Id);
    $output['Result'] = "OK";
    $output['Records'] = $data->result();
    $output['TotalRecordCount'] = $this->db->affected_rows();

    return $output;
 }

 public function update_child($Id, $StudentNo, $Course, $Gender, $ContactNo, $YearOfMembership, $Role)
 {
    $update_data = array('StudentNo' => $StudentNo, 'Course' => $Course, 'Gender' => $Gender, 'ContactNo' => $ContactNo, 'Role' => $Role); 
    $this->db->where('Id', $Id);
    $this->db->update('tb_members', $update_data); 

    $result['Result'] = "OK";
    $output['TotalRecordCount'] = $this->db->affected_rows();
  
    if($this->db->affected_rows()){
      //Mag e-mail!
    }

    return $result;
 }

 public function reset_pass($Email)
 {
    $this->db->query('update tb_members set Password = "'.sha1("onejpcs2013").'" where Email = "'.$Email.'"');
  
    if($this->db->affected_rows()){
/*      $this->load->library('email');

      $this->email->from('admin@jpcsfeueac.org', 'JPCS FEUEAC Admin');
      $this->email->to($Email);

      $this->email->subject('Password Reset — ONE JPCS');
      $this->email->message('
        Your password is set to "onejpcs2013"
        Please change your password immediately by logging in.
        ');  

      $this->email->send();*/
    }

    return $this->db->affected_rows();
 }

 public function check_exists_studentno($StudentNo)
 {

    $sql = "SELECT * FROM tb_members WHERE StudentNo = ?"; 

    $query = $this->db->query($sql, array($StudentNo));

    if( $query->num_rows() > 0 ){ return TRUE; } else { return FALSE; }
 }

 public function check_exists_email($Email)
 {

    $sql = "SELECT * FROM tb_members WHERE Email = ?"; 

    $query = $this->db->query($sql, array($Email));

    if( $query->num_rows() > 0 ){ return TRUE; } else { return FALSE; }
 }

 public function check_current_pass($Password, $StudentNo)
 {

    $query = $this->db->query("select Password from tb_members where StudentNo = ".$StudentNo."");

    foreach ($query->result() as $row)
    {
      $encpass = sha1($Password);
      $result = ($encpass == $row->Password ? true : false);
      return $result;  
    }

 }

  public function update_status($Id, $Status)
 {
    $this->db->query('update tb_members set Status = "'.$Status.'" where Id = "'.$Id.'"');  

    return $this->db->affected_rows();
 }

 public function update_pass($StudentNo, $Password)
 {
    $this->db->query("update tb_members set `Password` = '".sha1($Password)."' WHERE StudentNo = ".$StudentNo."");

    return $this->db->affected_rows();
 }

 public function register_user($StudentNo, $FirstName, $MiddleName, $LastName, $Course, $typeofmem, $Gender, $ContactNo, $Email, $Password)
 {
    $this->load->helper('date');
    $datestring = "%Y";
    $data_tb_members = array();
    reset($data_tb_members);

    $year = ($typeofmem=="local" ? "L-".mdate($datestring) : "N-".mdate($datestring));

    $data_tb_members = array(
               'StudentNo' => trim($StudentNo),
               'FirstName' => ucwords($FirstName),
               'MiddleName' => ucwords($MiddleName),
               'LastName' => ucwords($LastName),
               'Course' => $Course,
               'Gender' => $Gender,
               'ContactNo' => $ContactNo,
               'Role' => "Member",
               'Email' => $Email,
               'Password' => sha1($Password),
               'YearOfMembership' => $year
            );
     
    $this->db->insert('tb_members', $data_tb_members);

    return $this->db->affected_rows();
 }

}
?>