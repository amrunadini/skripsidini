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

	function selectNilaiLat(){
		$this->db->select('*');
		$this->db->from('nilai_latihan');

		return $this->db->get();
	}

	function selectMateri(){
		$this->db->select('*');
		$this->db->from('materi');

		return $this->db->get();
	}

	function selectTampilNilaiTugas(){
		$this->db->select('*');
		$this->db->from('nilai_tugas');

		return $this->db->get();
	}

	function selectNilaiEval(){
		$this->db->select('*');
		$this->db->from('nilai_evaluasi');

		return $this->db->get();
	}

	function selectListTugas(){
		$this->db->select('*');
		$this->db->from('tugas');

		return $this->db->get();
	}

	function selectListKelompok(){
		$this->db->select('*');
		$this->db->from('kelompok');

		return $this->db->get();
	}

	function selectjawabanTugas(){
		$this->db->select('*');
		$this->db->from('jawaban_tugas');

		return $this->db->get();
	}

	function selectjawabanEvaluasi(){
		$this->db->select('*');
		$this->db->from('jawaban_evaluasi');

		return $this->db->get();
	}

	function insertSoal($data){
		$this->db->insert('soal_latihan', $data);
	}

	function insertTugas($data){
		$this->db->insert('tugas', $data);
	}

	function insertjawabanT($data){
		$this->db->insert('nilai_tugas', $data);
	}

	function insertnilaiEval($data){
		$this->db->insert('nilai_evaluasi', $data);
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

	function edit_tugas($where,$tugas){
		return $this->db->get_where($tugas,$where);
	}

	function update_tugas($where,$data,$tugas){
		// $this->db->set($data);
		$this->db->where($where);
		$this->db->update($tugas, $data);
	}

	function delete_tugas($where,$tugas){
		$this->db->where($where);
		$this->db->delete($tugas);
	}

	function edit_kelompok($where,$kelompok){
		return $this->db->get_where($kelompok,$where);
	}

	function update_kelompok($where,$data,$kelompok){
		// $this->db->set($data);
		$this->db->where($where);
		$this->db->update($kelompok, $data);
	}

	function delete_kelompok($where,$kelompok){
		$this->db->where($where);
		$this->db->delete($kelompok);
	}
}

?>