<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->savelog();
    }


    public function index()
    {
        $fas = $this->db->get('f_hotel')->result();
        $this->load->view('Master/fasilitas_hotel', ['fas' => $fas]);
    }

    public function savelog()
    {
        if (!empty($_SERVER['HTTP_REFERER'])) {
            $data['comefrom'] = $_SERVER['HTTP_REFERER'];
        }
        $data['get'] = $_GET;
        $data['post'] = $_POST;
        if (!empty($_SESSION['user'])) {
            $data['user'] = $_SESSION['user'];
        }
        $json = json_encode($data);
        $save = array('data' => $json);
        $this->db->insert('data_log', $save);
    }

    public function Book()
    {
        //$data['user']=$_SESSION['user'];
        //$this->db->where('id', $_GET['id']);
        $tipe_kamar = $this->db->get('tipe_room')->result();
        $dataKamar = [];
        foreach ($tipe_kamar as $key => $kamar) {
            $this->db->where('id_tipekamar', $kamar->id);
            $fasilitaskamar = $this->db->get('f_kamar')->result();
            $dataKamar[$key] = array(
                'Info_kamar' => $kamar,
                'f_kamar' => $fasilitaskamar
            );
        };
        $allroom = $this->db->get('tipe_room')->result();
        $data['kamar'] = $dataKamar;
        $data['alltipe'] = $allroom;
        //var_dump($data['kamar']);die;
        $this->load->view('Tamu/reve', ['data' => $data]);
    }

    public function prosesBooking()
    {
        $this->db->where('id', $_POST['id_kamar']);
        $tipe_kamar = $this->db->get('tipe_room')->result();
        //var_dump($tipe_kamar);die;
        $total_harga = $_POST['jml_kamar'] * $tipe_kamar[0]->harga;
        //var_dump($total_harga);
        $REF = date('mdy') . $_POST['PayBay'] . date('His');
        $data = array(
            'nama_pemesan' => $_POST['nama_pemesan'],
            'email' => $_POST['email'],
            'no_hp' => $_POST['no_hp'],
            'nama_tamu' => $_POST['nama_pemesan'],
            'id_kamar' => $_POST['id_kamar'],
            'tgl_cekin' => $_POST['tgl_cekin'],
            'tgl_cekout' => $_POST['tgl_cekout'],
            'jml_kamar' => $_POST['jml_kamar'],
            'harga' => $total_harga,
            'PayBay' => $_POST['PayBay'],
            'PayEnd' => 0,
            'Status_kamar' => 0,
            'RefPB' => $REF,
        );
        $this->db->insert('pemesanan', $data);
        $this->print($REF);
    }

    public function print($REF)
    {
        $this->db->where('RefPB', $REF);
        $this->db->select('*');
        $this->db->from('pemesanan');
        $this->db->join('tipe_room', 'tipe_room.id = pemesanan.id_kamar');
        $print = $this->db->get()->result();
        $data['book'] = $print;
        //var_dump($data);die;
        $this->load->view('Tamu/print', ['data' => $data]);
    }
}
