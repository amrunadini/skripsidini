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

	public function guru(){
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

    public function tampil_nilailat()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectNilaiLat()->result();
		$this->load->view('V_nilailat', $data);
	}

	public function tampil_tugas()
	{
		$this->load->Model('M_guru');
		$data['datauser'] = $this->M_guru->selectjawabanTugas()->result();
		$this->load->view('V_jawtugas', $data);
	}
}
?>