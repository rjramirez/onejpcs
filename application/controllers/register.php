<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	 session_start();

class Register extends CI_Controller {

	 function __construct()
	 {
	   parent::__construct();
	 }

	public function index()
	{

			if($this->session->userdata('logged_in') AND uri_string()=="register"){
			   redirect('/main/', 'refresh');
			}

			$head['title'] = 'JPCS FEU-EAC | Register';

			$head['id'] = 'home';

			//loads the styles
			$head['styles'] = array('bootstrap-cerulean.min','bootstrap-responsive.min','home/home',
			'font-awesome.min');
			
			//loads the scripts
			$footer['scripts'] = array('jquery-1.7.2.min','bootstrap-carousel','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-dropdown','bootstrap-scrollspy',
			'bootstrap-tab','bootstrap-tooltip','bootstrap-popover','bootstrap-button','bootstrap-collapse','jquery.validate');
			
			//Page indicator
			$head['page'] = 'register';

			//Navlinks
			$head['nav_page'] = 'outside';

			//Header
			$this->load->view('templates/head', $head);

			//Navbar
			$this->load->view('navbar', $head);

			//Login
			$this->load->view('login');

			//Registration Page
			$this->load->view('registration/register');

			//Footer
			$this->load->view('templates/footer-register', $footer);
			$this->load->view('templates/footer-credits', $footer);

	}


	public function success()
	{

			$head['title'] = 'JPCS FEU-EAC | Successful Registration';

			//loads the styles
			$head['styles'] = array('bootstrap-cerulean.min','bootstrap-responsive.min','home/home',
			'font-awesome.min');
			
			//loads the scripts
			$footer['scripts'] = array('jquery-1.7.2.min','bootstrap-carousel','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-dropdown','bootstrap-scrollspy',
			'bootstrap-tab','bootstrap-tooltip','bootstrap-popover','bootstrap-button','bootstrap-collapse','jquery.validate');
			
			//Page indicator
			$head['page'] = 'register-success';

			//Navlinks
			$head['nav_page'] = 'outside';

			//Header
			$this->load->view('templates/head', $head);

			//Navbar
			$this->load->view('navbar', $head);

			//Login
			$this->load->view('login');

			//Success page
			$this->load->view('registration/success_registration');

			//Footer
			$this->load->view('templates/footer-register', $footer);
			$this->load->view('templates/footer-credits', $footer);

	}
	 
	 

}
