<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

session_start();

class Gallery extends CI_Controller {

	 function __construct()
	 {
	   parent::__construct();
	 }

	 function index(){

			$head['title'] = 'JPCS FEU-EAC | Gallery';

			$head['id'] = 'gallery';

			//loads the styles
			$head['styles'] = array('bootstrap-cerulean.min','bootstrap-responsive.min','home/home',
			'font-awesome.min','hoverdirection/stylehover','hoverdirection/noJS',
			'fancybox/jquery.fancybox','fancybox/jquery.fancybox-buttons','fancybox/jquery.fancybox-thumbs'
			);
			
			//loads the scripts
			$footer['scripts'] = array('jquery-1.7.2.min','hoverdirection/jquery.hoverdir','bootstrap-transition','bootstrap-alert','bootstrap-modal','bootstrap-scrollspy',
			'bootstrap-tab','bootstrap-button','bootstrap-collapse','jquery.validate','jquery.smooth-scroll','modernizr.custom.97074',
			'quicksand/jquery.easing.1.3', 'quicksand/jquery.quicksand', 'quicksand/jquery-animate-css-rotate-scale', 'quicksand/jquery-css-transform',
			'fancybox/jquery.fancybox.pack','fancybox/jquery.fancybox-buttons','fancybox/jquery.fancybox-media','fancybox/jquery.fancybox-thumbs');

			//Page indicator
			$head['page'] = 'gallery';

			//Navlinks
			$head['nav_page'] = 'outside';

	 		//Header
			$this->load->view('templates/head', $head);

			//Navbar
			$this->load->view('navbar', $head);

			//Login
			$this->load->view('login');

			//Gallery
			$this->load->view('gallery', $head);

			//Footer
			$this->load->view('templates/footer-gallery', $footer);
			$this->load->view('templates/footer-credits', $footer);
	 
	 }


}

?>