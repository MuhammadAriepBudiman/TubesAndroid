<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH.'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';
use Restserver\Libraries\REST_Controller;


class Berita extends REST_Controller {

	public function __construct($config = 'rest')
	{
		parent::__construct($config);
		//Do your magic here
	}

	function index_get()
	{
		$id = $this->get('id_artikel');
		if ($id == '') {
			$this->db->order_by('tgl_dibuat', 'desc');
			$artikel = $this->db->get('artikel')->result();
		} else {
			$this->db->where('id_artikel', $id);
			$artikel = $this->db->get('artikel')->result();
		}
		$this->response(array("result"=>$artikel, 200));
	}

	function index_post()
	{
			date_default_timezone_set("Asia/Jakarta");
			$tgl = date("Y-m-d H:i:s");
			$id = mt_rand();

			$image = base64_decode($this->input->post('foto'));

			$config['upload_path']		= './assets/uploads';
			$config['allowed_types']	= 'gif|jpg|png|jpeg';
			$config['max_size']			= 10000000000000;
			$config['max_width']		= 10240;
			$config['max_height']		= 7680;
			$config['file_name']		= $id;

			$this->load->library('upload', $config);
			if ($this->upload->do_upload(base64_decode($image))) {
				$gbr = $this->upload->data();
                //Compress Image
				$config['image_library']='gd2';
				$config['source_image']='C:/xampp2/htdocs/berita/apps/assets/uploads/'.$gbr['file_name'];
				$config['create_thumb']= FALSE;
				$config['maintain_ratio']= FALSE;
				$config['quality']= '100%';
				$config['width']= 400;
				$config['height']= 300;
				$config['new_image']= 'C:/xampp2/htdocs/berita/apps/assets/uploads/'.'thumbnail_'.$gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
			}


			if ( ! $this->image_lib->resize())
			{
				echo $this->image_lib->display_errors();
			}

			$object = array(
				'id_artikel' => $id,
				'judul' => $this->input->post('judul'),
				'isi' => $this->input->post('isi'),
				'tgl_dibuat' => $tgl,
				'foto'=>$this->upload->data('file_name'),
				'foto_thumbnail'=> 'thumbnail_'.$gbr['file_name'],
			);
			$artikel = $this->mArtikel->insertData($object);
			if ($artikel) {
				$this->response(array("result"=>$artikel, 200));	
			}else {
				$this->response(array("result"=>"Gagal", 200));
			}
			
	}

}

/* End of file Berita.php */
/* Location: ./application/controllers/Berita.php */