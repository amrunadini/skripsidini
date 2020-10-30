<?php

/**
 * 
 */
class C_profil extends CI_Controller
{
	
	public function index(){
		// if ($_SESSION['user_logged'] == FALSE) {
			
		// 	$this->session->set_flashdata("error", "Please login first");
		// 	redirect("C_login/getlogin");
		// }
		 $this->load->model('M_siswa');
		// $data['datauser']=$this->M_siswa->
		$where = array('id_siswa' => $this->session->userdata('id_siswa'));
		$data['nilai_materi'] = $this->M_siswa->cari_nilai($where, 'nilai_latihan')->result();
		$data['materi'] = $this->M_siswa->selectMateri()->result();
		$data['nama'] = $this->session->userdata('nama');
		$data['email'] = $this->session->userdata('email');
		// print_r($data['nilai_materi']);
		// print_r($where);
		 $this->load->view('V_profile',$data);
	}

	public function t_nilailat()
	{
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_guru->selectNilaiLat()->result();
		$this->load->view('V_nilailat', $data);
	}
}