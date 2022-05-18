<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tamu extends CI_Controller
{

    public function index()
    {
        $this->load->view('welcome_message');
    }

    //function detail tipe kamar
    public function detailTipe()
    {
        $this->db->where('id', $_GET['id']);
        $tipe_kamar = $this->db->get('tipe_room')->result();
        //var_dump($tipe_kamar);
        $data = [];
        foreach ($tipe_kamar as $key => $kamar) {
            $this->db->where('id_tipekamar', $kamar->id);
            $fasilitaskamar = $this->db->get('F_kamar')->result();
            $data[$key] = array(
                'Info_kamar' => $kamar,
                'F_kamar' => $fasilitaskamar
            );
        }
        $this->load->view('Tamu/detail_fasilitas_kamar', ['data' => $data]);
    }

    public function detailTipetamu()
    {
        $this->db->where('id', $_GET['id']);
        $tipe_kamar = $this->db->get('tipe_room')->result();
        //var_dump($tipe_kamar);
        $data = [];
        foreach ($tipe_kamar as $key => $kamar) {
            $this->db->where('id_tipekamar', $kamar->id);
            $fasilitaskamar = $this->db->get('F_kamar')->result();
            $data[$key] = array(
                'Info_kamar' => $kamar,
                'F_kamar' => $fasilitaskamar
            );
        }
        $this->load->view('Tamu/tamu_detail_fasilitas_kamar', ['data' => $data]);
        
        
    }


    public function Booking()
    {
        $data['user'] = $_SESSION['user'];
        $this->db->where('id', $_GET['id']);
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
        $this->load->view('Tamu/book', ['data' => $data]);
    }

    //functiom tipe kamar
    public function TipeKamar()
    {
        $tipe_kamar = $this->db->get('tipe_room')->result();
        $data = [];
        foreach ($tipe_kamar as $key => $kamar) {
            $this->db->where('id_tipekamar', $kamar->id);
            $fasilitaskamar = $this->db->get('F_kamar')->result();
            $data[$key] = array(
                'Info_kamar' => $kamar,
                'F_kamar' => $fasilitaskamar
            );
        }
        $this->load->view('Tamu/fasilitas_kamar', ['data' => $data]);
    }

    public function TipeKamartamu()
    {
        $tipe_kamar = $this->db->get('tipe_room')->result();
        $data = [];
        foreach ($tipe_kamar as $key => $kamar) {
            $this->db->where('id_tipekamar', $kamar->id);
            $fasilitaskamar = $this->db->get('F_kamar')->result();
            $data[$key] = array(
                'Info_kamar' => $kamar,
                'F_kamar' => $fasilitaskamar
            );
        }
        $this->load->view('Tamu/tamu_fasilitas_kamar', ['data' => $data]);
        
    }

    public function ref()
    {
        $this->db->where('nama_pemesan', $_SESSION['user']->Nama);
        $this->db->select('*');
        $this->db->from('pemesanan');
        $this->db->join('Tipe_room', 'Tipe_room.id = pemesanan.id_kamar');
        $bokingmu = $this->db->get()->result();
        $data['book'] = $bokingmu;
        //var_dump($data);die;
        $this->load->view('/Tamu/ref', ['data' => $data]);
        //var_dump($tipe_kamar);die; 
    }

    public function idopin($produk1,$quantity1,$priceone1)
    	{
    			$produk=[$produk1];
    			$quantity=[$quantity1];
    			$priceone=[$priceone1];
		        $va           = '0000000815183974'; //get on iPaymu dashboard
		        $secret       = 'SANDBOXC67328B7-78E9-46CA-BF78-B215F403FBE8-20220519004336'; //get on iPaymu dashboard
		        $url          = 'https://sandbox.ipaymu.com/api/v2/payment'; //url
		        $method       = 'POST'; //method
		        $body['product']    = $produk;
		        $body['qty']        = $quantity;
		        $body['price']      = $priceone;
		        $body['returnUrl']  = base_url('/Tamu/ref');
		        $body['cancelUrl']  = base_url('/');
		        $body['notifyUrl']  = base_url('/Tamu/ref');
		        $jsonBody     = json_encode($body, JSON_UNESCAPED_SLASHES);
		        $requestBody  = strtolower(hash('sha256', $jsonBody));
		        $stringToSign = strtoupper($method) . ':' . $va . ':' . $requestBody . ':' . $secret;
		        $signature    = hash_hmac('sha256', $stringToSign, $secret);
		        $timestamp    = Date('YmdHis');
		        $ch = curl_init($url);
		        $headers = array(
		            'Accept: application/json',
		            'Content-Type: application/json',
		            'va: ' . $va,
		            'signature: ' . $signature,
		            'timestamp: ' . $timestamp
		        );

		        curl_setopt($ch, CURLOPT_HEADER, false);
		        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

		        curl_setopt($ch, CURLOPT_POST, count($body));
		        curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonBody);

		        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		        $err = curl_error($ch);
		        $ret = curl_exec($ch);
		        curl_close($ch);
		        if($err) {
		            var_dump($err);
		        } else {
		            $ret = json_decode($ret);
		            if($ret->Status == 200) {
		                $sessionId  = $ret->Data->SessionID;
		                $url        =  $ret->Data->Url;
		                redirect($url);
		            } else {
		                var_dump($ret);
		            }
		        }
	}

    public function prosesBooking()
    {

        $tgl1 = strtotime($_POST['tgl_cekin']);
        $tgl2 = strtotime($_POST['tgl_cekout']);
        $jarak = $tgl2 - $tgl1;
        $hari = $jarak / 60 / 60 / 24 ;
        $this->db->where('id', $_POST['id_kamar']);
        $tipe_kamar = $this->db->get('tipe_room')->result();
        // var_dump($hari);die;
        $total_harga = $_POST['jml_kamar'] * $tipe_kamar[0]->harga*$hari;
        //var_dump($total_harga);

        $data = array(
            'nama_pemesan' => $_POST['nama_pemesan'],
            'email' => $_POST['email'],
            'no_hp' => $_POST['no_hp'],
            'nama_tamu' => $_POST['nama_tamu'],
            'id_kamar' => $_POST['id_kamar'],
            'tgl_cekin' => $_POST['tgl_cekin'],
            'tgl_cekout' => $_POST['tgl_cekout'],
            'jml_kamar' => $_POST['jml_kamar'],
            'harga' => $total_harga,
            'PayBay' => $_POST['PayBay'],
            'PayEnd' => 0,
            'Status_kamar' => 0,
            'RefPB' => date('mdy') . $_POST['PayBay'] . date('His')
        );
        $this->db->insert('pemesanan', $data);
        if ($_POST['PayBay']=='Transfer'){
            $binpas=$tipe_kamar[0]->Nama_room.' sebanyak'.$_POST['jml_kamar']. 'selama'.$hari. 'hari - total Harga ='.$total_harga;
            $this->idopin($binpas,1,$total_harga);
        }else{
            redirect('/Tamu/ref');
        }
        
    }

    public function print()
    {
        $this->db->where('id_pesanan', $_GET['id']);
        $this->db->select('*');
        $this->db->from('pemesanan');
        $this->db->join('tipe_room', 'tipe_room.id = pemesanan.id_kamar');
        $print = $this->db->get()->result();
        $data['book'] = $print;
        //var_dump($data);die;
        $this->load->view('Tamu/print', ['data' => $data]);
    }

    public function batal() 
    {
        $id = $_GET['id'];
        $this->db->where('id_pesanan', $id);
        $this->db->delete('pemesanan');
        redirect('Tamu/ref');
    }

    public function kontak()
    {
        $this->load->view('Tamu/kontak');
    }
}
