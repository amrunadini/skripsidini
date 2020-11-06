<?php

	/**
	 * 
	 */
	class M_siswa extends CI_Model
	{
		
		function __construct()
		{
			parent::__construct();
		}

		function selectSoal(){
			$this->db->select('*');
			$this->db->from('soal_latihan');

			return $this->db->get();
		}

		function selectMateri(){
			$this->db->select('*');
			$this->db->from('materi');

			return $this->db->get();
		}

		function update_data_materi_siswa($where,$data,$siswa){

			$this->db->where($where);
			$this->db->update($siswa, $data);
		}

		function selectMateri1($id){
			$this->db->select('*');
			$this->db->from('materi');
			$this->db->where('id_materi',$id);

			return $this->db->get();
		}

		function cari_nilai($where,$db){
			return $this->db->get_where($db,$where);
		}

		function cari_tanggal($where,$db){
			// $this->db->select('*');
			// $this->db->from('nilai_latihan');
			// $this->db->where('id_materi',$id);
			return $this->db->get_where($db,$where);
		}

		function selectById($id){
			$this->db->select('*');
			$this->db->from('soal_latihan');
			$this->db->where('id_materi',$id);
			
			return $this->db->get();
		}

		function selectByIdTugas($id){
			$this->db->select('*');
			$this->db->from('tugas');
			$this->db->where('id_tugas',$id);
			
			return $this->db->get();
		}

		function selectAllTugas(){
			$this->db->select('*');
			$this->db->from('jawaban_tugas');

			return $this->db->get();
		}

		function selectTugas(){
			$this->db->select('*');
			$this->db->from('tugas');

			return $this->db->get();
		}

		function selectjawabanTugas(){
			$this->db->select('*');
			$this->db->from('jawaban_tugas');
			$idsiswa =  $this->session->userdata('id_siswa');
			$this->db->where('id_siswa',$idsiswa);

			return $this->db->get();
		}

		function selectByIdSoal($id){
			$this->db->select('*');
			$this->db->from('soal_latihan');
			$this->db->where('id_materi', $id);
			
			return $this->db->get();
		}

		public function selectByIdNilai($id){
			$this->db->select('*');
			$this->db->from('nilai_latihan');
			$this->db->where('id_materi', $id);
			return $this->db->get();
		}

		public function selectmateristatus($where){
			$this->db->select('*');
			$this->db->from('status_materi');
			$this->db->where($where);
			return $this->db->get();
		}

		function jawabsoal($idsiswa,$idsoal,$jawaban,$idmateri){
			$this->db->query("insert into jawaban_latihan values (null,'$idsiswa','$idsoal','$idmateri','$jawaban')");
		}

		function nilaisoal($idmateri,$idsiswa,$nilai,$tanggal){
			$this->db->query("insert into nilai_latihan values (null,'$idmateri','$idsiswa','$nilai','$tanggal')");
		}

		function insertjwb($data){
			$this->db->insert('jawaban_tugas', $data);
		}
		function insert_status_materi($data){
			$this->db->insert('status_materi', $data);
		}
		function inserteval($data){
			$this->db->insert('jawaban_evaluasi', $data);
		}

	}