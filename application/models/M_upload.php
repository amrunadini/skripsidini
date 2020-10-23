<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_upload extends CI_Model {

 public $tableName;

 public function __construct(){
  parent::__construct();
 }

 public function selectAll(){
  $this->db->select('*');
  $this->db->from('tb_upload');
  // $this->db->order_by('id');

  return $this->db->get();
 } 
 
 public function insert($data){
  $this->db->insert('tb_upload',$data);
 }

 public function update($id,$data){
  $this->db->set($data);
  $this->db->where('id',$id);
  $this->db->update($this->tableName);
 }

 public function delete($id){
  $this->db->where('id',$id);
  $this->db->delete($this->tableName);
 }

}

?>