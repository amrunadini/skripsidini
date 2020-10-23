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

		function selectById($id){
			$this->db->select('*');
			$this->db->from('soal_latihan');
			$this->db->where('id_materi',$id);
			
			return $this->db->get();
		}

		function selectByIdSoal($id){
			$this->db->select('*');
			$this->db->from('soal_latihan');
			$this->db->where('id_materi', $id);
			
			return $this->db->get();
		}

		function jawabsoal($idsiswa,$idsoal,$jawaban){
			$this->db->query("insert into jawaban_latihan values (null,'$idsiswa','$idsoal','$jawaban')");
		}

		function nilaisoal($idmateri,$idsiswa,$nilai,$tanggal){
			$this->db->query("insert into nilai_latihan values (null,'$idmateri','$idsiswa','$nilai','$tanggal')");
		}

		function insertjwb($data){
			$this->db->insert('jawaban_tugas', $data);
		}

	}