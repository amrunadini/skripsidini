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
		// $this->load->model('M_siswa');
		// $data['datauser']=$this->M_siswa->
		$data['nama'] = $this->session->userdata('nama');
		$data['email'] = $this->session->userdata('email');
		$this->load->view('V_profile',$data);
	}

	public function t_nilailat()
	{
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_guru->selectNilaiLat()->result();
		$this->load->view('V_nilailat', $data);
	}
}