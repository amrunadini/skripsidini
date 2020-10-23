<?php

/**
 * 
 */
class C_login extends CI_Controller
{
	public function index()
	{
		$this->load->view('V_login');
	}

	public function getlogin(){

		$this->load->model('M_login');
		
		if($this->M_login->getlogin($this->input->post('email'),$this->input->post('password'))){

			$data = $this->M_login->selectByUsername($this->input->post('email'))->row_array();

			$userdata = array(
				'id_siswa' => $data['id_siswa'], 
				'email' => $data['email'], 
				'nama' => $data['nama'], 
				'password' => $data['password'],
				'logged_in' => true		 
			);

			$this->session->set_userdata($userdata);
			echo "<pre>";
			print_r($userdata);
			echo "</pre>";
			redirect('C_siswa');
			// echo "masok pak eko";
		}else{
			$username = $this->input->post("email");
  			$password = $this->input->post("password");
			if($username=="guru" && $password=="guru123"){
			   //jika benar
			   $this->session->set_userdata(array('email'=>$username));
			   redirect('C_guru/guru');
			}
			redirect('C_login');
	}}

	// public function register()
	// {
	// 	if (isset($_POST['register'])) {
	// 		$this->form_validation->set_rules('name', 'Name', 'required');
	// 		$this->form_validation->set_rules('email', 'Email', 'required');
	// 		$this->form_validation->set_rules('password', 'Password', 'required|min_length[8]');
	// 		$this->form_validation->set_rules('password', 'Confirm Password', 'required|min_length[8]|matches[password]');

	// 		if ($this->form_validation->run() == TRUE) {
	// 			echo 'Form Validated';

	// 			$data = array(
	// 				'name' => $_POST['name'],
	// 				'email' => $_POST['email'],
	// 				'password' => md5($_POST['password']),
	// 			);	
	// 			$this->db->insert('siswa', $data);

	// 			$this->session->set_flashdata("success", "Your account has been registered. You can login now");
	// 			redirect("C_login/register", "refresh");
	// 		}
	// 	}
	// 	$this->load->view('V_register');
	// }

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