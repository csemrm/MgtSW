<?php

require_once(FUEL_PATH . '/libraries/Fuel_base_controller.php');

class sample_shipping_outs extends Fuel_base_controller {

    function __construct() {

        parent::__construct();
        $this->load->model('sample_shipping_outs_model');
        $this->load->module_model(FUEL_FOLDER, 'fuel_users_model');
    }

    function index() {

        $data = array();

        $vars['assets_path'] = $this->config->item('assets_path');
        $data['sample_shipping_outs'] = $this->sample_shipping_outs_model->list_items();

        $vars['body'] = $this->load->view('MGTSW/sample_shipping_outs/index', $data, true);


        $this->load->view('MGTSW/MGTSW', $vars);
    }

    function add() {

        $data = array();

        $vars['assets_path'] = $this->config->item('assets_path');
        $vars['body'] = $this->form_process();


        $this->load->view('MGTSW/MGTSW', $vars);
    }

    function edit($id = null) {

        $vars = array();

        $vars['assets_path'] = $this->config->item('assets_path');
        $vars['body'] = $this->form_process($id);


        $this->load->view('MGTSW/MGTSW', $vars);
    }

    function form_process($id = null) {
        $this->load->model(array('Ncategories_model', 'production_units_model', 'local_companies_model'));
        $this->load->library('session');
        $this->load->library('saitex_form_builder');
        $this->load->helper('file');

        $this->saitex_form_builder->load_custom_fields(APPPATH . 'config/custom_fields.php');
        if (!empty($id)) {
            $saved = $this->sample_shipping_outs_model->find_one_array(array('id' => $id));
            if (empty($saved))
                show_404();
        }

        $this->session->set_flashdata('success', false);
        if (!empty($_POST)) {

            if ($this->_process($_POST)) {
                $this->session->set_flashdata('success', TRUE);
                redirect(redirect('sample_shipping_outs'));
            }
        }


        $fields = array();
        $fields['local_company_id'] = array('required' => TRUE, 'label' => 'Local Company', 'row_class' => 'create_a_customer', 'value' => 'Local Company', 'type' => 'select',
            'options' => $this->local_companies_model->options_list()
        );
        $fields['category_id'] = array('required' => TRUE, 'label' => 'Category', 'row_class' => 'create_a_customer', 'value' => 'Selct Category', 'type' => 'select',
            'options' => $this->Ncategories_model->options_list()
        );
        $fields['item_description'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Item Description', 'row_class' => 'create_a_customer');
        $fields['quantity'] = array('required' => TRUE, 'label' => 'Quantity', 'row_class' => 'create_a_customer');
        $fields['material_composition'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Material Composition', 'row_class' => 'create_a_customer');
        $fields['material_weight'] = array('required' => TRUE, 'label' => 'Material Weight', 'row_class' => 'create_a_customer');
        $fields['customization'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Customization', 'row_class' => 'create_a_customer');
        $fields['item_picture'] = array('required' => false, 'type' => 'file', 'label' => 'Item Picture:(if available)', 'row_class' => 'create_a_customer');
        $fields['notes'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Notes', 'row_class' => 'create_a_customer');
        $fields['customer_tracking_no_courier'] = array('required' => TRUE, 'label' => 'Customer Tracking no. & Courier & Pictures', 'type' => 'textarea', 'row_class' => 'create_a_customer');
        if (!empty($id))
            $fields['id'] = array('required' => TRUE, 'type' => 'hidden');
        $this->saitex_form_builder->set_fields($fields);
        $this->saitex_form_builder->css_class = 'search_box';
        // will set the values of the fields if there is an error... must be after set_fields
        $this->saitex_form_builder->set_validator($this->validator);
        if (!empty($_POST)) {
            $val = $_POST;
        } else
        if (!empty($id)) {
            $val = $saved;
        } else {
            $val = array();
        }
        
        $this->saitex_form_builder->set_field_values($val);
        $this->saitex_form_builder->display_errors = TRUE;
        $this->saitex_form_builder->form_attrs = 'method="post"';
        $this->saitex_form_builder->show_required = true;
        $this->saitex_form_builder->submit_value = 'Create Sample Request';
        $this->saitex_form_builder->submit_name = 'submit';
        $vars['form'] = $this->saitex_form_builder->render(null, 'divs');

        return $this->load->view('MGTSW/sample_shipping_outs/form', $vars, TRUE);
    }

    function _process($data) {
        $assets_path = $this->config->item('assets_path');
        $config['upload_path'] = './' . $assets_path . 'uploads/sample_shipping_outs/';
        $config['allowed_types'] = 'gif|jpg|png|pdf';
        $config['max_size'] = '2048';
        $config['max_width'] = '1024';
        $config['max_height'] = '768';
        $config['encrypt_name'] = TRUE;
 
        $this->load->library('upload', $config);
        $this->load->library('validator');

        if ($this->validator->validate()) {
            unset($data['submit']);
            foreach ($_FILES as $key => $value) {
                if ($value['name']) {
                    if (!$this->upload->do_upload($key)) {
                        $error = array('error' => $this->upload->display_errors());
                        print_r($error);
                        die();
                        return FALSE;
                    } else {
                        $upload_data = $this->upload->data();
                        $data[$key] = $upload_data['file_name'];
                    }
                }
            }
            if (empty($data['id']))
                $this->sample_shipping_outs_model->insert($data);
            else {
                $whare = array('id' => $data['id']);
                unset($data['id']);
                $this->sample_shipping_outs_model->update($data, $whare);
            }
            return TRUE;
        }
        return FALSE;
    }

    function view($id = null) {

        if (empty($id)) {
            show_404();
        }
        $where = array();
        $where['id'] = $id;
        $sample_shipping_out = $this->sample_shipping_outs_model->find_one_array($where);
        if (empty($sample_shipping_out['id'])) {
            show_404();
        }
        $data['sample_shipping_out'] = $sample_shipping_out;
        $vars['assets_path'] = $this->config->item('assets_path');
        $vars['body'] = $this->load->view('MGTSW/sample_shipping_outs/view', $data, true);


        $this->load->view('MGTSW/MGTSW', $vars);
    }

    function remove($id = null) {

        if (empty($id)) {
            show_404();
        }
        $where = array();
        $where['id'] = $id;
        $customer_order = $this->sample_shipping_outs_model->find_one($where);
        if (empty($customer_order->id)) {
            show_404();
        }
        if (!$this->fuel->auth->has_permission('sample_shipping_outs_delete')) {
            show_error(lang('error_no_permissions'));
        }


        $this->sample_shipping_outs_model->delete($where);
        redirect('sample_shipping_outs');
    }

    public function logit($msg) {
        $this->load->module_model(FUEL_FOLDER, 'fuel_logs_model');
        $this->fuel_logs_model->logit($msg);
    }

}
