<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_login extends CI_Model
{
	public function getlogin($username, $pwd)
	{
		$this->db->select('*');
		$this->db->from('siswa');
		$this->db->where('username', $username);
		$this->db->where('password', $pwd);

		if($this->db->get()->num_rows()>0){
			return true;
		}
		else{
			return false;
		}
	}

	public function register($siswa, $data)
	{
    	return $this->db->insert($siswa, $data);
	}

	public function selectByUsername($username){
		$this->db->select('*');
		$this->db->from('siswa');
		$this->db->where('username', $username);

		return $this->db->get();
		
	}
}