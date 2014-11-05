<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

session_start();

class Main extends CI_Controller {

	function __construct()
	 {
	   parent::__construct();
	   $this->load->model('user_model','',TRUE);
	   $this->load->helper('url');
	 }

	 function index(){


			$head['title'] = 'One JPCS | Home';

			$session_data = $this->session->userdata('logged_in');
/*			switch($session_data['role'])
			{
				case "Admin":
						//loads the styles
						$head['styles'] = array('bootstrap-cerulean.min','bootstrap-responsive.min', 'home/home',
						'font-awesome.min','jtable/jtable.min','jtable/jtable_metro_base.min','jtable/jquery-ui');

						//loads the scripts
						$footer['scripts'] = array('jquery-1.9.1.min','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-dropdown',
						'bootstrap-tab','bootstrap-tooltip','bootstrap-button','bootstrap-collapse','jquery.smooth-scroll','bootstrap-scrollspy',
						'jquery.validate','jquery-ui',
						'jtable/jquery.jtable','jtable/jquery-ui-1.9.2.min',
						'admin/home_admin');
					break;
				case "Member":
						//loads the styles
						$head['styles'] = array('bootstrap-cerulean.min','bootstrap-responsive.min', 'home/home',
						'font-awesome.min');

						//loads the scripts
						$footer['scripts'] = array('jquery-1.9.1.min','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-dropdown',
						'bootstrap-tab','bootstrap-tooltip','bootstrap-button','bootstrap-collapse','jquery.smooth-scroll','bootstrap-scrollspy',
						'jquery.validate',
						'members/home_members');
					break;
				default:
    				redirect('/home', 'refresh');
					break;

			}*/
	 		

			$head['styles'] = array('reset-min','bootstrap-cerulean.min','bootstrap-responsive.min', 'home/home',
			'font-awesome.min', 'datatables', 'tabletools/TableTools', 'colvis/ColVis');

			//loads the scripts
			$footer['scripts'] = array('jquery-1.7.2.min','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-dropdown',
			'bootstrap-tab','bootstrap-tooltip','bootstrap-popover','bootstrap-button','bootstrap-collapse','bootstrap-carousel','bootstrap-typeahead',
			'datatables/jquery.dataTables.min','datatables/jquery.dataTables.columnFilter-1.5.1','datatables/bootstrap-plugin/bootstrapv2-default','jquery.validate',
			'tabletools/TableTools.min','tabletools/ZeroClipboard', 'datatables/ColVis.min');

			//Page indicator
			$head['page'] = 'onejpcs_home';

			//Navlinks
			$head['nav_page'] = 'outside';

	 		//Header
			$this->load->view('templates/head', $head);

			//Navbar
			$this->load->view('navbar', $head);

			if($session_data['role']=="Admin"){
				$this->load->view('secured/admin/home_admin', $head);
				//Footer
				$this->load->view('secured/admin/footer-admin', $footer);
			}else if($session_data['role']=="Member"){
				$result = $this->user_model->getMembersDetails($session_data['StudentNo']);
				foreach($result as $row){
			         $head['StudentNo'] = $row->StudentNo;
			         $head['Email'] = $row->Email;
			         $head['FirstName'] = $row->FirstName;
			         $head['MiddleName'] = $row->MiddleName;
			         $head['LastName'] = $row->LastName;
			         $head['Course'] = $row->Course;
			         $head['Gender'] = $row->Gender;
			         $head['ContactNo'] = $row->ContactNo;
		           	 $head['Role'] = $row->Role;
		        }
				$this->load->view('secured/members/home_members', $head);
				//Footer
				$this->load->view('secured/members/footer-members', $footer);
			}else{
    			redirect('/home', 'refresh');
			}

	 }


}

?>