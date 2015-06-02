<?php 

	App::uses('AppController', 'Controller');
	
	class BidsController extends AppController{
		
		var $name = "Bids";
		var $helpers = array("Html","Form");
		
		public function  index()
		{
			//$this->autoRender = false;
			$commodity = $this->Bid->find('all');
			pr($commodity);
		}
	}