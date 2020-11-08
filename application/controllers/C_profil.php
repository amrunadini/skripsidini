<?php

/**
 * 
 */
class C_profil extends CI_Controller
{
	
	public function index(){
		 $this->load->model('M_siswa');
		// $data['datauser']=$this->M_siswa->
		$where = array('id_siswa' => $this->session->userdata('id_siswa'));
		$data['nilai_materi'] = $this->M_siswa->cari_nilai($where, 'nilai_latihan')->result();
		$data['materi'] = $this->M_siswa->selectMateri()->result();
		$data['nama'] = $this->session->userdata('nama');
		$data['username'] = $this->session->userdata('username');
		$data['kelompok'] = $this->session->userdata('kelompok');
		// print_r($data['nilai_materi']);
		// print_r($where);
		 $this->load->view('V_profile',$data);
	}

	public function histori_nilai($id){
		$this->load->model('M_siswa');
		$where = array('id_siswa' => $this->session->userdata('id_siswa'));
		$data['id_materi'] = $id;
		$data['materi'] = $this->M_siswa->selectMateri1($id)->result();
		$data['nilai_materi'] = $this->M_siswa->cari_nilai($where, 'nilai_latihan')->result();
		$data['tanggal'] = $this->M_siswa->cari_tanggal($where, 'nilai_latihan')->result();
		// print_r($data['nilai_materi']);
		// print_r($where);
		$this->load->view('V_historinilai',$data);
	}

	public function kesalahan_jawab(){
		$this->load->view('V_lihatkesalahan');
	}

	public function t_nilailat()
	{
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_guru->selectNilaiLat()->result();
		$this->load->view('V_nilailat', $data);
	}
}