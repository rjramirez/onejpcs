<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	 session_start();

class Home extends CI_Controller {

	 function __construct()
	 {
	   parent::__construct();
	 }


	public function index()
	{

			$head['title'] = 'JPCS FEU-EAC';

			$head['id'] = 'home';

			//loads the styles
			$head['styles'] = array('bootstrap-cerulean.min','bootstrap-responsive.min','home/home',
			'font-awesome.min',
			'fancybox/jquery.fancybox','fancybox/jquery.fancybox-buttons','fancybox/jquery.fancybox-thumbs'
			);
			
			//loads the scripts
			$footer['scripts'] = array('jquery-1.9.1.min','bootstrap-carousel','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-dropdown','bootstrap-scrollspy',
			'bootstrap-tab','bootstrap-popover','bootstrap-button','bootstrap-collapse','jquery.validate','jquery.smooth-scroll',
			'greensock/jquery.superscrollorama','greensock/TweenMax.min', 'greensock/TimelineLite.min');
			
			//Page indicator
			$head['page'] = 'home';

			//Header
			$this->load->view('templates/head', $head);

			//Navbar
			$this->load->view('navbar', $head);

			//Login
			$this->load->view('login');

			//Slider
			$this->load->view('slider', $head);

			//About Us
			$this->load->view('aboutUs');

			//Footer
			$this->load->view('templates/footer', $footer);
			$this->load->view('templates/footer-credits', $footer);

	}

	public function logout()
	{
	$this->session->unset_userdata('logged_in');
	session_destroy();
	redirect('/', 'refresh');
	}

}
