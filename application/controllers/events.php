<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

session_start();

class Events extends CI_Controller {

	function __construct()
	 {
	   parent::__construct();
	 }

	 function index(){

		$head['title'] = 'JPCS FEU-EAC | Events';

		//loads the styles
		$head['styles'] = array('bootstrap-cerulean.min','bootstrap-responsive.min', 'home/home',
		'font-awesome.min');

		//loads the scripts
		$footer['scripts'] = array('jquery-1.9.1.min','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-dropdown','bootstrap-scrollspy',
		'bootstrap-tab','bootstrap-tooltip','bootstrap-popover','bootstrap-button','bootstrap-collapse','bootstrap-typeahead','jquery.validate');

		//Page indicator
		$head['page'] = 'events';

		//Navlinks
		$head['nav_page'] = 'outside';

 		//Header
		$this->load->view('templates/head', $head);

		//Navbar
		$this->load->view('navbar', $head);

		//Login
		$this->load->view('login');

		//Events
		$this->load->view('events', $head);

		//Footer
		$this->load->view('templates/footer-events', $footer);
		$this->load->view('templates/footer-credits', $footer);

	 }

	 function php_roadshow_2013(){

	 	$head['title'] = 'PHP Roadshow 2013 at FEU-EAC';

		//loads the styles
		$head['styles'] = array('bootstrap-cerulean.min','bootstrap-responsive.min', 'home/home',
		'font-awesome.min');

		//loads the scripts
		$footer['scripts'] = array('jquery-1.9.1.min','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-dropdown',
		'bootstrap-tab','bootstrap-tooltip','bootstrap-popover','bootstrap-button','bootstrap-collapse','bootstrap-typeahead',
		'jquery.validate');

		//Page indicator
		$head['page'] = 'events';

 		//Header
		$this->load->view('templates/head', $head);

		//Navbar
		$this->load->view('navbar', $head);

		//Login
		$this->load->view('login');

		//Events
		$this->load->view('events/phproadshow2013');

		//Footer
		$this->load->view('templates/footer-events', $footer);
		$this->load->view('templates/footer-credits', $footer);

	 }


}

?>