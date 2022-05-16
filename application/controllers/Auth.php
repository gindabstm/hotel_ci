<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->Ceklogin();
    }

    public function Ceklogin()
    {
        if (empty($_GET{
            'out'})) {
            if (!empty($_SESSION['user'])) {
                $this->leving();
            } else {
                //redirect('/Auth/login');
            }
        }
    }

    public function Register()
    {
        $this->load->view('Auth/register');
    }

    public function addusers()
    {

		$this->db->where('username', $_POST['username']);
		$login=$this->db->get('users')->result();
		if (!empty($login)) {
			$_SESSION['ipw']="Username Sudah Terdaftar Harap Mengganti Username Anda    ";
			redirect('/Auth/Register');
		}else{
	   	 	$data=$_POST;
	    	$data += array(
	        'level' => 'tamu'
			);
			// var_dump($data);die;
    		$this->db->insert('users', $data);
    		redirect('/Auth/login');
		}

	}

    public function login()
    {
        $this->load->view('Auth/login');
    }

    public function cekusers()
    {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $this->db->where('username', $username);
        $this->db->where('password', $password);
        $login = $this->db->get('users')->result();
        if (empty($login)) {
            $_SESSION['ipw']="User Tidak Di Temukan Harap mengisi Data Dengan Benar";
            redirect('/Auth/login');    
        }
        $_SESSION['user'] = $login[0];
        $this->Leving();
    }

    public function Leving()
    {
        if ($_SESSION['user']->level == "tamu") {
            redirect('/');
        }
        if ($_SESSION['user']->level == "resepsionis") {
            redirect('/Resepsionis/cari_data');
        }
        if ($_SESSION['user']->level == "admin") {
            redirect('/');
        }
    }

    public function Logout()
    {
        session_destroy();
        redirect('/');
    }
}
