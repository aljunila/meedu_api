<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class user extends REST_Controller {

  // construct
  public function __construct(){
    parent::__construct();
    $this->load->database();
  }

  // method index untuk menampilkan semua data berita menggunakan method get
  public function index_get(){
        $data = $this->db->get('endusers')->result();
        $this->response(ResponseTemplate($data, 200, "Berhasil"), 200);
  }



    function index_post() {
        $data = array(
                    'id'           => $this->post('id'),
                    'fullname'     => $this->post('fullname'),
                    'priviledge_id'=> $this->post('priviledge_id'),
                    'user_group_id'=> $this->post('user'),
                    'username'     => $this->post('username'),
                    'phone'        => $this->post('phone'),
                    'password'     => sha1($this->post('password')),
                    'created_date' => date('Y-m-d H:i:s'),
                    'created_by'   => $this->post('created_by'),
                    'status'       =>'A');
        $insert = $this->db->insert('endusers', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

     function index_put() {
        $id = $this->put('id');
        $data = array(
                    'id'           => $this->put('id'),
                    'fullname'     => $this->put('fullname'),
                    'priviledge_id'=> $this->put('priviledge_id'),
                    'user_group_id'=> $this->put('user'),
                    'username'     => $this->put('username'),
                    'phone'        => $this->put('phone'),
                    'password'     => sha1($this->put('password')),
                    'created_date' => date('Y-m-d H:i:s'),
                    'created_by'   => $this->put('created_by'),
                    'status'       =>'A');
        $this->db->where('id', $id);
        $update = $this->db->update('endusers', $data);
        if ($update) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    function index_delete() {
        $id = $this->delete('id');
        $this->db->where('id', $id);
        $delete = $this->db->delete('endusers');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

}