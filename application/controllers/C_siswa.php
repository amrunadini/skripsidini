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
		$where = array('id_siswa' => $this->session->userdata('id_siswa'));
		$data['datamateri'] = $this->M_siswa->selectMateristatus($where)->result();
		$this->load->view('V_materi', $data);
	}

	public function entitas($id){
		$this->load->Model('M_siswa');
		$where = array('id_materi' => 1,'id_siswa' => $this->session->userdata('id_siswa'));
		$data['datastatus'] = $this->M_siswa->selectmateristatus($where)->result();
		if( !($data['datastatus'])){
			$query = array(
				'id_siswa' => $this->session->userdata('id_siswa'),
				'id_materi' => $id,
				'keterangan' => 'belum'
			);
			$this->M_siswa->insert_status_materi($query);
		}
		$this->load->view('V_entitas');
	}
	public function entitas1(){	
		$this->load->Model('M_siswa');
		$data['keterangan'] = 'sudah';
		$where = array('id_materi' => 1,'id_siswa' => $this->session->userdata('id_siswa'));
		$this->M_siswa->update_data_materi_siswa($where,$data,'status_materi');
		$this->load->view('V_entitas1');
	}

	public function atribut($id){
		$this->load->Model('M_siswa');
		$where = array('id_materi' => 2,'id_siswa' => $this->session->userdata('id_siswa'));
		$data['datastatus'] = $this->M_siswa->selectmateristatus($where)->result();
		if( !($data['datastatus'])){
			$query = array(
				'id_siswa' => $this->session->userdata('id_siswa'),
				'id_materi' => $id,
				'keterangan' => 'belum'
			);
			$this->M_siswa->insert_status_materi($query);
		}
		$this->load->view('V_atribut');
	}

	public function atribut1(){
		$this->load->Model('M_siswa');
		$data['keterangan'] = 'sudah';
		$where = array('id_materi' => 2,'id_siswa' => $this->session->userdata('id_siswa'));
		$this->M_siswa->update_data_materi_siswa($where,$data,'status_materi');
		$this->load->view('V_atribut1');
	}

	public function relasi($id){
		$this->load->Model('M_siswa');
		$where = array('id_materi' => 3,'id_siswa' => $this->session->userdata('id_siswa'));
		$data['datastatus'] = $this->M_siswa->selectmateristatus($where)->result();
		if( !($data['datastatus'])){
			$query = array(
				'id_siswa' => $this->session->userdata('id_siswa'),
				'id_materi' => $id,
				'keterangan' => 'belum'
			);
			$this->M_siswa->insert_status_materi($query);
		}
		$this->load->view('V_relasi');
	}

	public function relasi1(){
		$this->load->Model('M_siswa');
		$data['keterangan'] = 'sudah';
		$where = array('id_materi' => 3,'id_siswa' => $this->session->userdata('id_siswa'));
		$this->M_siswa->update_data_materi_siswa($where,$data,'status_materi');
		$this->load->view('V_relasi1');
	}

	public function kardinalitas($id){
		$this->load->Model('M_siswa');
		$where = array('id_materi' => 4,'id_siswa' => $this->session->userdata('id_siswa'));
		$data['datastatus'] = $this->M_siswa->selectmateristatus($where)->result();
		if( !($data['datastatus'])){
			$query = array(
				'id_siswa' => $this->session->userdata('id_siswa'),
				'id_materi' => $id,
				'keterangan' => 'belum'
			);
			$this->M_siswa->insert_status_materi($query);
		}
		$this->load->view('V_kardinalitas');
	}

	public function kardinalitas1(){
		$this->load->Model('M_siswa');
		$data['keterangan'] = 'sudah';
		$where = array('id_materi' => 4,'id_siswa' => $this->session->userdata('id_siswa'));
		$this->M_siswa->update_data_materi_siswa($where,$data,'status_materi');
		$this->load->view('V_kardinalitas1');
	}

	public function evaluasi(){
		$this->load->Model('M_siswa');
		$data['datatugas'] = $this->M_siswa->selectByIdEvaluasi($id)->result();
		$this->load->view('V_evaluasi');
	}

	public function tampil_evaluasi(){
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectEval()->result();
		$data['datatugas'] = $this->M_siswa->selectAllEval()->result();
		$datasiswa = $this->session->userdata('id_siswa');
		$where1 = array('id_siswa' => $datasiswa);
		$data['jawabaneval'] = $this->M_siswa->selectjawabaneval($where1)->result();
		$data['id'] = $this->session->userdata('id_siswa');
		$idpass = $data['id'];
		$idkel = $this->M_siswa->selectkelompok($idpass)->result();
		// print_r($idkel);
		// echo $idkel[0]->kelompok;
		
		$result = $this->M_siswa->selectjawabantugasbyid1($idkel[0]->kelompok)->result();
		if (count($result) > 0) {
			$data['statustugas'] = 'sudah';
		}else{
			$data['statustugas'] = 'belum';
		}

		// print_r($result);
		// $where = array('id_materi' => 1);
		$this->load->view('V_awalevaluasi', $data);
	}

	public function tampil_tugas(){
		$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectTugas()->result();
		$data['datatugas'] = $this->M_siswa->selectAllTugas()->result();
		$datasiswa = $this->session->userdata('id_siswa');
		$where1 = array('id_siswa' => $datasiswa);
		$data['jawabantugas'] = $this->M_siswa->selectjawabanlatihan($where1)->result();
		$where = array('id_siswa' => $datasiswa);
		$data['idkelompok'] = $this->M_siswa->cariidkelompok($where)->result();
		$data['id'] = $this->session->userdata('id_siswa');
		// print_r($data['jawabantugas']);
		// $where = array('id_materi' => 1);
		$this->load->view('V_awaltugas', $data);
	}

	public function tampil_tugas1($idkel,$idtugas){
		$this->load->Model('M_siswa');
		$where = array('id_siswa' => $this->session->userdata('id_siswa'),'id_kelompok' => $idkel,'id_kelompok' => $idkel);
		$result = $this->M_siswa->selectjawabantugasbyid($where)->result();
		if (count($result) > 0) {
			$this->load->Model('M_siswa');
		$data['datauser'] = $this->M_siswa->selectTugas()->result();
		$data['datatugas'] = $this->M_siswa->selectAllTugas()->result();
		$datasiswa = $this->session->userdata('id_siswa');
		$where1 = array('id_siswa' => $datasiswa);
		$data['jawabantugas'] = $this->M_siswa->selectjawabanlatihan($where1)->result();
		$where = array('id_siswa' => $datasiswa);
		$data['idkelompok'] = $this->M_siswa->cariidkelompok($where)->result();
		$data['id'] = $this->session->userdata('id_siswa');
		// print_r($data['jawabantugas']);
		// $where = array('id_materi' => 1);
		$this->load->view('V_awaltugas', $data);
		} else {
			$data['datatugas'] = $this->M_siswa->selectByIdTugas($idtugas)->result();
			$data['datauser'] = $this->M_siswa->selectAllKelompok()->result();
		 	$data['id'] = $idkel;
			$this->load->view('V_tugas',$data);
			// print_r($data['datatugas']);
			// echo "<br>";
			// print_r($data['datauser']);
		}

		// $data['datatugas'] = $this->M_siswa->selectByIdTugas($id)->result();
		// $data['datauser'] = $this->M_siswa->selectAllKelompok()->result();
		// $data['id'] = $this->session->userdata('id_kelompok');
		// // echo $id;
		// // print_r($data['datatugas']);
		// $this->load->view('V_tugas',$data);
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
		$where = array('id_siswa' => $this->session->userdata('id_siswa'));
		$data['datamateri'] = $this->M_siswa->selectMateristatus($where)->result();
		$this->load->view('V_latihan', $data);
	}

	public function insertJawabanLat(){
		$this->load->Model('M_siswa');
		$id = $this->input->post('id_materi');
        $idsiswa =  $this->session->userdata('id_siswa');
				$data['soal'] = $this->M_siswa->selectById($id)->result();
				$id = $this->input->post('id_materi');
				// echo $id;
        $score=0;
        echo "<pre>";
        print_r($data);
        echo "</pre>";
        $tanggal = date("Y-m-d");
        foreach ($data['soal'] as $key) {
        	echo "$key->id_soal";
					$jawaban = $this->input->post($key->id_soal);
        	echo "$jawaban <br>";
        	$this->M_siswa->jawabsoal($idsiswa,$key->id_soal,$id,$jawaban);
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

	public function insertjawabantug(){
        $data['upload_path']		= 'upload/';
        $data['allowed_types']	= 'gif|jpg|jpeg|png|iso|dmg|zip|rar|doc|docx|xls|xlsx|ppt|pptx|csv|ods|odt|odp|pdf|rtf|sxc';
        $data['max_size'] 			= '5000';
        $data['overwrite']  		= TRUE;
        $data['file_ext_tolower']	= TRUE;
		$data['remove_spaces']		= TRUE;
		$data['mod_mime_fix']		= TRUE;
		$data['detect_mime']		= TRUE;
		$this->load->library('upload', $data);
    
       	if ( ! $this->upload->do_upload('userfile')){
            $error = array('error' => $this->upload->display_errors());
            redirect(site_url('C_siswa'));
        }
        else{
        	$data = $this->upload->data();
	        $tanggal = date("Y-m-d");
	        $data['tanggal'] = $tanggal;
	        $data['entitas'] = $this->input->post('entitas');
	        $data['atribut'] = $this->input->post('atribut');
	        $data['relasi'] = $this->input->post('relasi');
	        $data['kardinalitas'] = $this->input->post('kardinalitas');
			$data['id_tugas'] = $this->input->post('idtugas');
			$data['id_kelompok'] = $this->input->post('id_kelompok');
	        $data['id_siswa'] = $this->session->userdata('id_siswa');
        	$data = array(
        		'tanggal' => $data['tanggal'],
        		'entitas' => $data['entitas'],
        		'atribut' => $data['atribut'],
        		'relasi' => $data['relasi'],
        		'kardinalitas' => $data['kardinalitas'],
        		'id_siswa' => $data['id_siswa'],
						'id_tugas' => $data['id_tugas'],
						'id_kelompok' => $data['id_kelompok'],
        		'file_name' => $data['file_name'],
        		'file_size' => $data['file_size']
        	);
        	$this->load->Model('M_siswa');
        	$this->M_siswa->insertjwb($data);
        	redirect(site_url('C_siswa'));
        }      
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
