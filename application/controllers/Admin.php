<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{

    public function index()
    {
        $this->load->view('welcome_message');
    }

    public function data()
    {
        $view = $_GET['v'];
        $t = $_GET['t'];
        $t = $this->db->get($t)->result();
        $this->load->view('Admin/' . $view, ['data' => $t]);
    }

    public function add()
    {
        $view = $_GET['v'];
        $t = $_GET['t'];
        if (!empty($_POST)) {
            $this->db->insert($_GET['t'], $_POST);
            echo '<script type ="text/JavaScript">';  
            echo 'alert("Data Berhasil Di Tambahkan")';  
            echo '</script>';  
        }
        $t = $this->db->get($t)->result();
        $this->load->view('Admin/' . $view, ['data' => $t]);
    }

    public function update()
    {
        $lin = [];
        foreach ($_POST as $key => $upcase) {
            $lin[] = array($key, $upcase);
            $this->db->set($key, $upcase);
        }
        $this->db->where($_GET['link'], $_GET['val']);
        $this->db->update($_GET['t']);
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function remove()
    {
        $table = $_GET['t'];
        $id = $_GET['id'];
        $this->db->where($_GET['f'], $id);
        $this->db->delete($table);
        redirect($_SERVER['HTTP_REFERER']);
    }
}
