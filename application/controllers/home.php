<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        $this->load->model('home_model');
        $this->load->library('form_validation');
    }

    public function index()
	{   
        $this->load->view('home');
	}
        
        public function fillgrid(){
            $this->home_model->fillgrid();
        }


        public function create(){
            $this->form_validation->set_rules('name', 'Name', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
            $this->form_validation->set_rules('contact', 'Contact Number', 'required|numeric|max_length[10]|min_length[10]');
            if ($this->form_validation->run() == FALSE){
               echo'<div class="alert alert-danger">'.validation_errors().'</div>';
               exit;
            }
            else{
                $this->home_model->create();
            }
        }
        
        public function edit(){
            $id =  $this->uri->segment(3);
            $this->db->where('id',$id);
            $data['query'] = $this->db->get('curd');
            $data['id'] = $id;
            $this->load->view('edit', $data);
            }
            
        public function update(){
                $res['error']="";
                $res['success']="";
                $this->form_validation->set_rules('name', 'Name', 'required');
                $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
                $this->form_validation->set_rules('contact', 'Contact Number', 'required|numeric|max_length[10]|min_length[10]');
                if ($this->form_validation->run() == FALSE){
                $res['error']='<div class="alert alert-danger">'.validation_errors().'</div>';    
                }           
            else{
                $data = array('name'=>  $this->input->post('name'),
                'email'=>$this->input->post('email'),
                'contact'=>$this->input->post('contact'),
                'facebook_link'=>$this->input->post('facebook'));
                $this->db->where('id', $this->input->post('hidden'));
                $this->db->update('curd', $data);
                $data['success'] = '<div class="alert alert-success">One record inserted Successfully</div>';
            }
            header('Content-Type: application/json');
            echo json_encode($res);
            exit;
        }


        public function delete(){
            $id =  $this->input->POST('id');
            $this->db->where('id', $id);
            $this->db->delete('curd');
            echo'<div class="alert alert-success">One record deleted Successfully</div>';
            exit;
        }
        
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */