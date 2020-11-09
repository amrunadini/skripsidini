<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * 
 */
class C_guru extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url'));
	}

	public function index(){
		$this->load->view('V_guru');
	}

	public function tampil_siswa()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectSiswa()->result();
		$this->load->view('V_tsiswa', $data);
	}

	public function tampil_latihan()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectLatihan()->result();
		$this->load->view('V_tlatihan', $data);
	}

	public function tampil_tugas()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectjawabanTugas()->result();
		$this->load->view('V_jawtugas', $data);
	}

	public function tampil_evaluasi()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectjawabanEvaluasi()->result();
		$this->load->view('V_tampilevaluasi', $data);
	}

	public function tampil_materi()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectMateri()->result();
		$this->load->view('V_tampilmateri', $data);
	}

	public function tampil_nilaitugas()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectTampilNilaiTugas()->result();
		$this->load->view('V_tampilnilai', $data);
	}

	public function tampil_nilaieval()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectNilaiEval()->result();
		$this->load->view('V_tampilnilaieval', $data);
	}

	public function tampil_datatugas()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectListTugas()->result();
		$this->load->view('V_tampiltugas', $data);
	}

	public function tampil_datakelompok()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectListKelompok()->result();
		$this->load->view('V_tampilkelompok', $data);
	}

	public function tampil_nilailat()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectNilaiLat()->result();
		$this->load->view('V_nilailat', $data);
	}

	public function insertsoal(){
        $data['id_materi'] = $this->input->post('id');
        $data['soal'] = $this->input->post('soal');
        $data['pil1'] = $this->input->post('pil1');
        $data['pil2'] = $this->input->post('pil2');
        $data['pil3'] = $this->input->post('pil3');
        $data['pil4'] = $this->input->post('pil4');
        $data['pil5'] = $this->input->post('pil5');
        $data['kunci'] = $this->input->post('kunci');
        echo "<pre>";
        print_r($data);
        echo "</pre>";
        //memasukan data yang sudah diinput di form V_input ke database
        $this->load->Model('M_guru');
        $this->M_guru->insertSoal($data);
        redirect(site_url('C_guru/tampil_latihan'));
	}
	
	public function insertnilaitugas(){
        $data['id_siswa'] = $this->input->post('id');
        $data['nilai'] = $this->input->post('nilai');
        
        //memasukan data yang sudah diinput di form V_guru ke database
        $this->load->Model('M_guru');
        $this->M_guru->insertjawabanT($data);
        redirect(site_url('C_guru'));        
	}
	
	public function insertnilaievaluasi(){
        $data['id_siswa'] = $this->input->post('id');
        $data['nilai'] = $this->input->post('nilai');
        
        //memasukan data yang sudah diinput di form V_guru ke database
        $this->load->Model('M_guru');
        $this->M_guru->insertnilaiEval($data);
        redirect(site_url('C_guru'));        
	}
	
	public function inserttugas(){
        $data['nama_tugas'] = $this->input->post('nama_tugas');
        $data['des_tugas'] = $this->input->post('des_tugas');
        
        //memasukan data yang sudah diinput di form V_guru ke database
        $this->load->Model('M_guru');
        $this->M_guru->insertTugas($data);
        redirect(site_url('C_guru'));        
    }

	public function editsiswa($id){
		$where = array('id_siswa' => $id);
		$this->load->Model('M_guru');
		$data['siswa'] = $this->M_guru->edit_data($where, 'siswa')->result();
		$this->load->view('V_editsiswa', $data);
	}

	public function updatesiswa(){
		$id = $this->input->post('id');
		$nama = $this->input->post('nama');
		$username = $this->input->post('username');
		$kelompok = $this->input->post('kelompok');

		$data = array(
			'nama' => $nama, 
			'username' => $username,
			'kelompok' => $kelompok
		);

		$where = array(
			'id_siswa' => $id
		);

		$this->load->Model('M_guru');
		$this->M_guru->update_data($where,$data,'siswa');
		redirect('C_guru/tampil_siswa');
	}

	public function deletesiswa($id){
		$where = array('id_siswa' => $id);
		$this->load->Model('M_guru');
		$this->M_guru->delete($where,'siswa');

		//membuka kembali controller C_mahasiswa
		redirect(site_url('C_guru/tampil_siswa'));
	}

	public function edittugas($id){
		$where = array('id_tugas' => $id);
		$this->load->Model('M_guru');
		$data['tugas'] = $this->M_guru->edit_tugas($where, 'tugas')->result();
		$this->load->view('V_edittugas', $data);
	}

	public function updatetugas(){
		$id = $this->input->post('id');
		$nama_tugas = $this->input->post('nama_tugas');
		$des_tugas = $this->input->post('des_tugas');

		$data = array(
			'nama_tugas' => $nama_tugas,
			'des_tugas' => $des_tugas
		);

		$where = array(
			'id_tugas' => $id
		);

		$this->load->Model('M_guru');
		$this->M_guru->update_tugas($where,$data,'tugas');
		redirect('C_guru/tampil_datatugas');
	}

	public function deletetugas($id){
		$where = array('id_tugas' => $id);
		$this->load->Model('M_guru');
		$this->M_guru->delete($where,'tugas');

		//membuka kembali controller C_mahasiswa
		redirect(site_url('C_guru/tampil_datatugas'));
	}

	public function editkelompok($id){
		$where = array('id_kelompok' => $id);
		$this->load->Model('M_guru');
		$data['kelompok'] = $this->M_guru->edit_kelompok($where, 'kelompok')->result();
		$this->load->view('V_editkelompok', $data);
	}

	public function updatekelompok(){
		$id = $this->input->post('id');
		$tema = $this->input->post('tema');
		$link = $this->input->post('link');

		$data = array(
			'tema' => $tema,
			'link' => $link
		);

		$where = array(
			'id_kelompok' => $id
		);

		$this->load->Model('M_guru');
		$this->M_guru->update_kelompok($where,$data,'kelompok');
		redirect('C_guru/tampil_datakelompok');
	}

	public function deletekelompok($id){
		$where = array('id_kelompok' => $id);
		$this->load->Model('M_guru');
		$this->M_guru->delete($where,'kelompok');

		//membuka kembali controller C_mahasiswa
		redirect(site_url('C_guru/tampil_datakelompok'));
	}
}
?>