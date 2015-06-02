<?php 

	App::uses('AppController', 'Controller');
	
	class LinhVucThongBaosController extends AppController{
		
		var $helpers = array('Html');
		
		public function  linh_vuc_thong_bao()
		{
			$this->autoRender = false;
			$commodity = $this->LinhVucThongBao->find('all');
			$LisCommodity = array();
			foreach ($commodity as $data) {
				$LisCommodity['LinhVucThongBao'][] = array(
					'lvtb_id' => $data['LinhVucThongBao']['lvtb_id'],	
					'ten_linh_vuc' => $data['LinhVucThongBao']['ten_linh_vuc'],
				);
			}
			echo json_encode($LisCommodity);
		}
	}