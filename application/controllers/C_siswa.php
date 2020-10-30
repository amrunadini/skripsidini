<?php

/**
 * 
 */
class C_siswa extends CI_Controller
{
	
	public function __construct(){
		
		parent::__construct();
		if ($_SESSION['logged_in'] == 0) {
			
			$this->session->set_flashdata("error", "Please login first");
			redirect("C_login/getlogin");
		}
	}
	public function index(){
		// if ($_SESSION['user_logged'] == FALSE) {
			
		// 	$this->session->set_flashdata("error", "Please login first");
		// 	redirect("C_login/getlogin");
		// }
		// $this->load->model('M_siswa');
		// $data['datauser']=$this->M_siswa->
		$data['nama'] = $this->session->userdata('nama');
		$this->load->view('V_siswa',$data);
	}
	public function siswa(){
		// if ($_SESSION['user_logged'] == FALSE) {
			
		// 	$this->session->set_flashdata("error", "Please login first");
		// 	redirect("C_login/getlogin");
		// }
		// $this->load->model('M_siswa');
		// $data['datauser']=$this->M_siswa->
		$this->load->view('V_siswa');
	}

	public function materi(){
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectMateri()->result();
		$this->load->view('V_materi', $data);
	}

	// public function pilihmateri($id)
	// {
	// 	$this->load->model('M_siswa');
	// 	$data['datauser'] = $this->M_siswa->selectById($id)->result();
	// 	$data['id_materi'] = $id;
	// 	$this->load->view('V_konten', $data);
	// }

	public function entitas(){
		$this->load->view('V_entitas');
	}
	public function entitas1(){
		echo $_POST["kolom1"];
		echo "<br>";
		echo $_POST["kolom2"];
		echo "<br>";
		echo $_POST["kolom3"];
		echo "<br>";
		echo $_POST["kolom4"];
		echo "<br>";
		echo $_POST["kolom5"];
	}

	public function atribut(){
		$this->load->view('V_atribut');
	}

	public function relasi(){
		$this->load->view('V_relasi');
	}

	public function kardinalitas(){
		$this->load->view('V_kardinalitas');
	}

	public function tugas(){
		$this->load->view('V_tugas');
	}

	public function evaluasi(){
		$this->load->view('V_evaluasi');
	}

	public function profile(){
		$data['nama'] = $this->session->userdata('nama');
		$this->load->view('V_profile');
	}

    public function latihan(){
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectMateri()->result();
		$this->load->view('V_latihan', $data);
	}

    public function soal($id){
		$this->load->model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectByIdSoal($id)->result_array();
		$data['id_materi'] = $id;
		$this->load->view('V_soal', $data);
	}

	public function insertJawabanLat(){
		$this->load->Model('M_siswa');
		$id = $this->input->post('id_materi');
        $idsiswa =  $this->session->userdata('id_siswa');
        $data['soal'] = $this->M_siswa->selectById($id)->result();
        $score=0;
        echo "<pre>";
        print_r($data);
        echo "</pre>";
        $tanggal = date("Y-m-d");
        foreach ($data['soal'] as $key) {
        	echo "$key->id_soal";
        	$jawaban = $this->input->post($key->id_soal);
        	echo "$jawaban <br>";
        	$this->M_siswa->jawabsoal($idsiswa,$key->id_soal,$jawaban);
        	if ($key->kunci==$jawaban) {
        		echo "Benar <br>";
        		$score = $score + 20;
        	}else{
        		echo "Salah";
        	}

        }echo "Scorenya = $score";
         $this->M_siswa->nilaisoal($id,$idsiswa,$score,$tanggal);
        // echo "<pre>";
        // echo "$jawaban";
        // echo "</pre>";   
        redirect(site_url('C_siswa/latihan'));
	}

	public function insertjawabantugas(){
		$config['upload_path']		= 'upload/';
        $config['allowed_types']	= 'gif|jpg|jpeg|png|iso|dmg|zip|rar|doc|docx|xls|xlsx|ppt|pptx|csv|ods|odt|odp|pdf|rtf|sxc';
        $config['max_size'] 		= '5000';
        $config['overwrite']  		= TRUE;
        $config['file_ext_tolower']	= TRUE;
		$config['remove_spaces']	= TRUE;
		$config['mod_mime_fix']		= TRUE;
		$config['detect_mime']		= TRUE;
		$this->load->library('upload', $config);
    
       	if ( ! $this->upload->do_upload('userfile')){
            $error = array('error' => $this->upload->display_errors());
            redirect(site_url('C_siswa'));
        }
        else{
	        $tanggal = date("Y-m-d");
	        $data['tanggal'] = $tanggal;
	        $data['jawaban'] = $this->input->post('jawaban');
	        $data['id_siswa'] = $this->session->userdata('id_siswa');
        	$data = $this->upload->data();
        	$query = array(
        		'tanggal' => $data['tanggal'],
        		'jawaban' => $data['jawaban'],
        		'id_siswa' => $data['id_siswa'],
        		'file_name' => $data['file_name'],
        		'file_size' => $data['file_size']
        	);
        	$this->M_upload->insert($query);
        	redirect(site_url('C_siswa'));
        }
                       
        $this->load->Model('M_siswa');
        $this->M_siswa->insertjwb($data);
        redirect(site_url('C_siswa'));        
    }     
    
}
