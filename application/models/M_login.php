<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_login extends CI_Model
{
	public function getlogin($email, $pwd)
	{
		$this->db->select('*');
		$this->db->from('siswa');
		$this->db->where('email', $email);
		$this->db->where('password', $pwd);

		if($this->db->get()->num_rows()>0){
			return true;
		}
		else{
			return false;
		}
	}

	public function selectByUsername($email){
		$this->db->select('*');
		$this->db->from('siswa');
		$this->db->where('email', $email);

		return $this->db->get();
		
	}
}