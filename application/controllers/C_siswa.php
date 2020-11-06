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
		$data['nama'] = $this->session->userdata('nama');
		$data['id'] = $this->session->userdata('id_siswa');
		$this->load->view('V_siswa',$data);
	}
	public function siswa(){
		$this->load->view('V_siswa');
	}

	public function materi(){
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectMateri()->result();
		$this->load->view('V_materi', $data);
	}

	public function entitas(){
		$this->load->view('V_entitas');
	}
	public function entitas1(){	
		$this->load->Model('M_siswa');
		$data['keterangan'] = 'sudah';
		$where = array('id_materi' => 1);
		$this->M_siswa->update_data_materi_siswa($where,$data,'materi');
		$this->load->view('V_entitas1');
	}

	public function atribut(){
		$this->load->view('V_atribut');
	}

	public function atribut1(){
		$this->load->Model('M_siswa');
		$where = array('id_materi' => 2);
		$data['keterangan'] = 'sudah';
		$this->M_siswa->update_data_materi_siswa($where,$data,'materi');
		$this->load->view('V_atribut1');
	}

	public function relasi(){
		$this->load->view('V_relasi');
	}

	public function relasi1(){
		$this->load->Model('M_siswa');
		$data['keterangan'] = 'sudah';
		$where = array('id_materi' => 3);
		$this->M_siswa->update_data_materi_siswa($where,$data,'materi');
		$this->load->view('V_relasi1');
	}

	public function kardinalitas(){

		$this->load->view('V_kardinalitas');
	}

	public function kardinalitas1(){
		$this->load->Model('M_siswa');
		$data['keterangan'] = 'sudah';
		$where = array('id_materi' => 4);
		$this->M_siswa->update_data_materi_siswa($where,$data,'materi');
		$this->load->view('V_kardinalitas1');
	}

	public function evaluasi(){
		$this->load->view('V_evaluasi');
	}

	public function evaluasi1(){
		$this->load->view('V_evaluasi1');
	}

	public function tugas(){
		$this->load->view('V_tugas');
	}

	public function tampil_tugas(){
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectTugas()->result();
		$data['datatugas'] = $this->M_siswa->selectAllTugas()->result();
		$data['id'] = $this->session->userdata('id_siswa');
		$this->load->view('V_awaltugas', $data);
	}

	public function tampil_tugas1($id){
		$this->load->Model('M_siswa');
		$data['datatugas'] = $this->M_siswa->selectByIdTugas($id)->result();
		// echo $id;
		// print_r($data['datatugas']);
		$this->load->view('V_tugas',$data);
	}

	public function profile(){
		$data['nama'] = $this->session->userdata('nama');
		$this->load->view('V_profile');
	}

    public function soal($id){
		$this->load->model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectByIdSoal($id)->result_array();
		$data['id_materi'] = $id;
		$this->load->view('V_soal', $data);
	}

	public function latihan(){
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectMateri()->result();
		$this->load->view('V_latihan', $data);
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
	
	public function insertjawabaneval(){
        $data['id_jawabaneval'] = $this->input->post('id');
        $data['id_siswa'] = $this->session->userdata('id_siswa');
        $data['entitas'] = $this->input->post('entitas');
        $data['atribut'] = $this->input->post('atribut');
        $data['relasi'] = $this->input->post('relasi');
        $data['kardinalitas'] = $this->input->post('kardinalitas');
        echo "<pre>";
        print_r($data);
        echo "</pre>";
        //memasukan data yang sudah diinput di form V_input ke database
        $this->load->Model('M_siswa');
        $this->M_siswa->inserteval($data);
        redirect(site_url('C_siswa'));
    }
    
}
