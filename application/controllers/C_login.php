<?php

/**
 * 
 */
class C_login extends CI_Controller
{
	public function index()
	{
		$this->load->view('V_home');
	}

	public function getlogin(){

		$this->load->model('M_login');
		
		if($this->M_login->getlogin($this->input->post('username'),$this->input->post('password'))){

			$data = $this->M_login->selectByUsername($this->input->post('username'))->row_array();

			$userdata = array(
				'id_siswa' => $data['id_siswa'], 
				'username' => $data['username'], 
				'nama' => $data['nama'], 
				'password' => $data['password'],
				'kelompok' => $data['kelompok'],
				'logged_in' => true		 
			);

			$this->session->set_userdata($userdata);
			// echo "<pre>";
			// print_r($userdata);
			// echo "</pre>";
			redirect('C_siswa');
			// echo "masok pak eko";
		}else{
			$username = $this->input->post("username");
  			$password = $this->input->post("password");
			if($username=="guru" && $password=="guru123"){
			   //jika benar
			   $this->session->set_userdata(array('username'=>$username));
			   redirect('C_guru/guru');
			}
			$this->load->view('V_login');
	}}

	public function register()
	{
		$this->load->view('V_register');
	}

	public function proses_register()
	{
		$this->load->library('form_validation');
	    $this->load->library('session');

    	$this->form_validation->set_rules('nama', 'Nama', 'required');
    	$this->form_validation->set_rules('username', 'Username', 'required');
    	$this->form_validation->set_rules('password', 'Password', 'required');
    
	    if ($this->form_validation->run() == FALSE) {
	        $errors = $this->form_validation->error_array();
	        $this->session->set_flashdata('errors', $errors);
	        $this->session->set_flashdata('input', $this->input->post());
	        redirect('C_login/register');
	    } else {
	        $username = $this->input->post('username');
	        $nama = $this->input->post('nama');
	        $password = $this->input->post('password');
	        // $pass = password_hash($password, PASSWORD_DEFAULT);
	        $data = [
	            'username' => $username,
	            'nama' => $nama,
	            'password' => $password
	        ];
	        $this->load->model('M_login');
	        $insert = $this->M_login->register("siswa", $data);
	        if($insert){
	            echo '<script>alert("Sukses! Anda berhasil melakukan register. Silahkan login untuk mengakses data.");window.location.href="'.base_url('C_login/index').'";</script>';
	        }
	    }
	}

	public function logout(){
		unset($_SESSION);
		session_destroy();
		redirect("C_login/home", "refresh");
	}

	public function home(){
		// if ($_SESSION['user_logged'] == FALSE) {
			
		// 	$this->session->set_flashdata("error", "Please login first");
		// 	redirect("C_login/home");
		// }
		$this->load->view('V_home');
	}
}