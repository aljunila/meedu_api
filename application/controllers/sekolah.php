<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class sekolah extends REST_Controller {

  // construct
  public function __construct(){
    parent::__construct();
    $this->load->database();
  }

  // method index untuk menampilkan semua data berita menggunakan method get
  public function index_get(){
        $data = $this->db->get('sekolah')->result();
        $this->response(ResponseTemplate($data, 200, "Berhasil"), 200);
  }

    function index_post() {
        $data = array(
                   'name' => $this->post('name'),
                    'address' => $this->post('address'),
                    'telp' => $this->post('telp'),
                    'email' => $this->post('email'),
                    'accreditation' => $this->post('accreditation'),
                    'curriculum' => $this->post('curriculum'),
                    'implementation' => $this->post('implementation'),
                    'internet' => $this->post('internet'),
                    'classroom' => $this->post('classroom'),
                    'laboratorium' => $this->post('laboratorium'),
                    'library' => $this->post('library'),
                    'surface_area' => $this->post('s_area'),
                    'f_students' => $this->post('f_students'),
                    'm_students' => $this->post('m_students'),
                    'teachers' => $this->post('teachers'),
                    'school_mng' => $this->post('school_mng'),
                    'website' => $this->post('website'),
                    'created_date' => date('Y-m-d H:i:s'),
                    'created_by'   => $this->post('created_by'),
                    'status'       =>'A');
        $insert = $this->db->insert('sekolah', $data);
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
                    'name' => $this->put('name'),
                    'address' => $this->put('address'),
                    'telp' => $this->put('telp'),
                    'email' => $this->put('email'),
                    'accreditation' => $this->put('accreditation'),
                    'curriculum' => $this->put('curriculum'),
                    'implementation' => $this->put('implementation'),
                    'internet' => $this->put('internet'),
                    'classroom' => $this->put('classroom'),
                    'laboratorium' => $this->put('laboratorium'),
                    'library' => $this->put('library'),
                    'surface_area' => $this->put('s_area'),
                    'f_students' => $this->put('f_students'),
                    'm_students' => $this->put('m_students'),
                    'teachers' => $this->put('teachers'),
                    'school_mng' => $this->put('school_mng'),
                    'website' => $this->put('website'),
                    'created_date' => date('Y-m-d H:i:s'),
                    'created_by'   => $this->put('created_by'),
                    'status'       =>'A');
        $this->db->where('id', $id);
        $update = $this->db->update('sekolah', $data);
        if ($update) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    function index_delete() {
        $id = $this->delete('id');
        $this->db->where('id', $id);
        $delete = $this->db->delete('sekolah');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

}