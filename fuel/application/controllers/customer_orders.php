<?php

require_once(FUEL_PATH . '/libraries/Fuel_base_controller.php');

class customer_orders extends Fuel_base_controller {

    function __construct() {

        parent::__construct();
        $this->load->model('customer_orders_model');
        $this->load->module_model(FUEL_FOLDER, 'fuel_users_model');
    }

    function index() {

        $data = array();

        $vars['assets_path'] = $this->config->item('assets_path');
        $data['customer_orders'] = $this->customer_orders_model->list_items();

        $vars['body'] = $this->load->view('MGTSW/customer_orders/index', $data, true);


        $this->load->view('MGTSW/MGTSW', $vars);
    }

    function add() {

        $data = array();

        $vars['assets_path'] = $this->config->item('assets_path');
        $vars['body'] = $this->form_process();


        $this->load->view('MGTSW/MGTSW', $vars);
    }

    function edit($id = null) {

        $data = array();

        $vars['assets_path'] = $this->config->item('assets_path');
//        $vars['body'] = $this->form_process($id);


        $this->load->view('MGTSW/MGTSW', $vars);
    }

    function form_process($id = null) {
        $this->load->model('Ncategories_model');
        $this->load->library('session');
        $this->load->library('saitex_form_builder');
        $this->load->helper('file');



        $this->session->set_flashdata('success', false);
        if (!empty($_POST)) {

            if ($this->_process($_POST)) {
                $this->session->set_flashdata('success', TRUE);
                redirect(redirect('customer_orders'));
            }
        }


        $fields = array();
        $fields['customer_name'] = array('required' => TRUE, 'label' => 'Customer Name', 'row_class' => 'create_a_customer');
        $fields['category_id'] = array('required' => TRUE, 'label' => 'Category', 'row_class' => 'create_a_customer', 'value' => 'Selct Category', 'type' => 'select',
            'options' => $this->Ncategories_model->options_list()
        );
        $fields['item_description'] = array('required' => TRUE, 'type' => 'wysiwyg', 'editor' => 'markitup', 'label' => 'Item Description', 'row_class' => 'create_a_customer');
        $fields['quantity'] = array('required' => TRUE, 'label' => 'Quantity', 'row_class' => 'create_a_customer');
        $fields['material_composition'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Material Composition', 'row_class' => 'create_a_customer');
        $fields['material_weight'] = array('required' => TRUE, 'label' => 'Material Weight', 'row_class' => 'create_a_customer');
        $fields['customization'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Customization', 'row_class' => 'create_a_customer');
        $fields['messurment_chat'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Messurment Chat', 'row_class' => 'create_a_customer');
        $fields['item_picture'] = array('required' => TRUE, 'type' => 'file', 'label' => 'Item Picture:(if available)', 'row_class' => 'create_a_customer');
        $fields['technical_files'] = array('required' => TRUE, 'type' => 'file', 'label' => 'Technical Files:(if available)', 'row_class' => 'create_a_customer');
        $fields['logo_files'] = array('required' => TRUE, 'type' => 'file', 'label' => 'Logo Files:(if available)', 'row_class' => 'create_a_customer');
        $fields['notes'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Notes', 'row_class' => 'create_a_customer');
        $fields['price'] = array('required' => TRUE, 'label' => 'Price', 'row_class' => 'create_a_customer');
        $fields['po_proforma_file'] = array('required' => TRUE, 'type' => 'file', 'label' => 'PO and Pro-form Attached Files ', 'row_class' => 'create_a_customer');
        $fields['further_customer_file'] = array('required' => TRUE, 'type' => 'file', 'label' => 'Further Customer\'s Attached Files ', 'row_class' => 'create_a_customer');
        $fields['link_production'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Link to the Production Monitoring System ', 'row_class' => 'create_a_customer');
        $fields['lab_dip_delivery_term'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Lab-Dip Delivery Term', 'row_class' => 'create_a_customer');
        $fields['pp_sample_delivery_term'] = array('label' => 'PP Sample Delivery Term ', 'type' => 'textarea', 'row_class' => 'create_a_customer', 'order' => 25);
        $fields['tracking_number'] = array('required' => TRUE, 'label' => 'Customer Tracking no. & Courier & Pictures', 'type' => 'textarea', 'row_class' => 'create_a_customer');
        $fields['office_update_parcel_receipt'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Office Update', 'row_class' => 'create_a_customer');
        $fields['customer_update_parcel_receipt'] = array('required' => TRUE, 'type' => 'textarea', 'label' => 'Customer\'s Details Update ', 'row_class' => 'create_a_customer');
        $fields['shipping_agent'] = array('required' => TRUE, 'label' => 'Shipping Agent', 'type' => 'textarea', 'row_class' => 'create_a_customer', 'order' => 25);
        $fields['payment_update_file'] = array('required' => TRUE, 'label' => 'Payment Update', 'type' => 'textarea', 'row_class' => 'create_a_customer', 'order' => 25);

        $this->saitex_form_builder->set_fields($fields);
        $this->saitex_form_builder->css_class = 'search_box';
        // will set the values of the fields if there is an error... must be after set_fields
        $this->saitex_form_builder->set_validator($this->validator);
        $this->saitex_form_builder->set_field_values($_POST);
        $this->saitex_form_builder->display_errors = TRUE;
        $this->saitex_form_builder->form_attrs = 'method="post"';
        $this->saitex_form_builder->show_required = true;
        $this->saitex_form_builder->submit_value = 'Create Sample Shipping Out';
        $this->saitex_form_builder->submit_name = 'submit';
        $vars['form'] = $this->saitex_form_builder->render($fields, 'divs');

        return $this->load->view('MGTSW/customer_orders/form', $vars, TRUE);
    }

    function _process($data) {
        $assets_path = $this->config->item('assets_path');
        $config['upload_path'] = './' . $assets_path . 'uploads/';
        $config['allowed_types'] = 'gif|jpg|png|pdf';
        $config['max_size'] = '2048';
        $config['max_width'] = '1024';
        $config['max_height'] = '768';
        $config['encrypt_name'] = TRUE;
        print_r($config);
        $this->load->library('upload', $config);
        $this->load->library('validator');

        if ($this->validator->validate()) {
            unset($data['submit']);
            foreach ($_FILES as $key => $value) {
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
            if (empty($data['id']))
                $this->customer_orders_model->insert($data);
            else {
                $whare = array('id' => $data['id']);
                unset($data['id']);
                $this->customer_orders_model->update($data, $whare);
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
        $customer_order = $this->customer_orders_model->find_one_array($where);
        if (empty($customer_order['id'])) {
            show_404();
        }
        $data['customer_order'] = $customer_order;
        $vars['assets_path'] = $this->config->item('assets_path');
        $vars['body'] = $this->load->view('MGTSW/customer_orders/view', $data, true);


        $this->load->view('MGTSW/MGTSW', $vars);
    }

    function remove($id = null) {

        if (empty($id)) {
            show_404();
        }
        $where = array();
        $where['id'] = $id;
        $customer_order = $this->customer_orders_model->find_one($where);
        if (empty($customer_order->id)) {
            show_404();
        }
        if (!$this->fuel->auth->has_permission('customer_orders_delete')) {
            show_error(lang('error_no_permissions'));
        }


        $this->customer_orders_model->delete($where);
        redirect('customer_orders');
    }

    public function logit($msg) {
        $this->load->module_model(FUEL_FOLDER, 'fuel_logs_model');
        $this->fuel_logs_model->logit($msg);
    }

}
