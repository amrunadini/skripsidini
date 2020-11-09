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
		$data['kelas'] = $this->session->userdata('kelas');
		$data['kelompok'] = $this->session->userdata('kelompok');
		// print_r($data['nilai_materi']);
		// print_r($where);
		 $this->load->view('V_profile',$data);
	}

	public function histori_nilai($id){
		$this->load->model('M_siswa');
		$where = array('id_siswa' => $this->session->userdata('id_siswa'));
		$wherejawaban = array('id_siswa' => $this->session->userdata('id_siswa'),'id_soal' => $id);
		$data['jawaban'] = $this->M_siswa->selectjawaban($wherejawaban)->result();;
		$data['id_materi'] = $id;
		$data['materi'] = $this->M_siswa->selectMateri1($id)->result();
		$data['nilai_materi'] = $this->M_siswa->cari_nilai($where, 'nilai_latihan')->result();
		$data['tanggal'] = $this->M_siswa->cari_tanggal($where, 'nilai_latihan')->result();
		// print_r($data['nilai_materi']);
		// print_r($where);
		$this->load->view('V_historinilai',$data);
	}

	public function kesalahan_jawab($waktu,$tanggal,$idmateri){
		$this->load->model('M_siswa');
		$where = array( 'waktu' => $waktu,'tanggal' => $tanggal, 'id_materi' => $idmateri);
		// echo $waktu;
		// , 'id_soal' => $idsoal
		// 'id_siswa' => $this->session->userdata('id_siswa'),
		$data1['jawaban'] = $this->M_siswa->selectJawabanSoalEval($where)->result();

		$where2 = array('id_materi' => $idmateri);
		$data1['datasoal'] = $this->M_siswa->selectJawabanSoallatBenar($where2)->result();
		// print_r($data['jawaban']);
		// echo "<br>";
		// echo "<br>";
		// print_r($data['datasoal']);
		 $this->load->view('V_lihatkesalahan',$data1);
	}

	public function t_nilailat()
	{
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_guru->selectNilaiLat()->result();
		$this->load->view('V_nilailat', $data);
	}
}