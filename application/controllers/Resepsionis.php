<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Resepsionis extends CI_Controller
{

    public function index()
    {
        $this->load->view('welcome_message');
    }

    public function call()
    {
        $view = $_GET['v'];
        $t = $_GET['t'];
        if (!empty($_POST)) {
            foreach ($_POST as $key => $value) {
                $this->db->like($key, $value);
            }
        }
        $t = $this->db->get($t)->result();
        $this->load->view('Resepsionis/' . $view, ['data' => $t]);
    }

    public function payed(Type $var = null)
    {
        $this->db->set($_GET['f'], $_GET['v']);
        $this->db->where('id_pesanan', $_GET['id']);
        $this->db->update('pemesanan');

        redirect($_SERVER['HTTP_REFERER']);
    }

    public function cari_data()
    {
        if (!empty($_GET['ref'])) {
            $cari = $_GET['ref'];
            $this->db->where('RefPB', $cari);
            $this->db->select('*');
            $this->db->from('pemesanan');
            $this->db->join('Tipe_room', 'Tipe_room.id = pemesanan.id_kamar');
            $bokingmu = $this->db->get()->result();
            $data['book'] = $bokingmu;
            $data['id'] = $cari;
            //var_dump($data);die;
            $this->load->view('Resepsionis/ref', ['data' => $data]);
        } else {
            $this->load->view('Resepsionis/cari_data');
        }
    }
}
