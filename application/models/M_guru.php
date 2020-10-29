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

	function edit_data($where,$siswa){
		return $this->db->get_where($siswa,$where);
	}

	function update_data($where,$data,$siswa){
		// $this->db->set($data);
		$this->db->where($where);
		$this->db->update($siswa, $data);
	}

	function delete($where,$siswa){
		$this->db->where($where);
		$this->db->delete($siswa);
	}
}

?>