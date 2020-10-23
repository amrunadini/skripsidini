s<?php

/**
 * 
 */
class M_guru extends CI_model
{
	
	function __construct()
	{
		parent::__construct();
	}

	function selectSiswa(){
		$this->db->select('*');
		$this->db->from('siswa');

		return $this->db->get();
	}

	function selectLatihan(){
		$this->db->select('*');
		$this->db->from('soal_latihan');

		return $this->db->get();
	}

	function insertSoal($data){
		$this->db->insert('soal_latihan', $data);
	}

	function selectNilaiLat(){
		$this->db->select('*');
		$this->db->from('nilai_latihan');

		return $this->db->get();
	}

	function selectjawabanTugas(){
		$this->db->select('*');
		$this->db->from('jawaban_tugas');

		return $this->db->get();
	}
}

?>