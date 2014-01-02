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

        $this->load->library('session');
        $this->load->library('form_builder');
        $this->load->helper('file');

        $this->session->set_flashdata('success', false);
        if (!empty($_POST)) {
            if ($this->_process($_POST)) {
                $this->session->set_flashdata('success', TRUE);
                redirect(current_url());
            }
        }


        $fields = array();
        $fields['email'] = array('required' => TRUE, 'label' => 'Email Address', 'class' => 'small');
        $fields['email']['after_html'] = '<span id="email_check"></span>';
        $fields['password'] = array('required' => TRUE, 'type' => 'password', 'class' => 'small');
        $fields['password']['after_html'] = '<span id="pass_check">(6+ alpha/numeric characters)</span>';
        $fields['confirm_password'] = array('required' => TRUE, 'type' => 'password', 'class' => 'small');
        $fields['confirm_password']['after_html'] = '<span id="password_matched"></span>';
        $fields['first_name'] = array('required' => TRUE, 'class' => 'small');
        $fields['last_name'] = array('required' => TRUE, 'class' => 'small');

        $fields['company'] = array('required' => false, 'class' => 'small');
        $fields['street1'] = array('required' => TRUE, 'label' => 'Address', 'class' => 'small');
        $fields['street2'] = array('required' => false, 'label' => 'Address 2', 'class' => 'small');
//        $fields['country'] = array('required' => TRUE, 'value' => 'United States', 'class' => 'small', 'type' => 'select',
//            'options' => $this->countries_model->options_list()
//        );

        $fields['state'] = array('required' => TRUE, 'class' => 'small', 'type' => 'select');
        $fields['postalcode'] = array('required' => TRUE, 'label' => 'Zip/Post Code', 'class' => 'small');
        $fields['city'] = array('required' => TRUE, 'class' => 'small');
        $fields['phone'] = array('required' => TRUE, 'label' => 'Phone Number', 'class' => 'small');


        $fields['mailing_list'] = array('required' => false, 'label' => 'Add to Mailing List', 'type' => 'checkbox', 'checked' => 'checked', 'value' => 'yes');
        $fields['mailing_list']['after_html'] = '<span id="span_mailing_list">I would like to receive updates about new imagery, photographers and offers from mptv by email.</span>';
        $fields['terms'] = array('required' => TRUE, 'value' => 'yes', 'label' => 'Terms/Conditions', 'type' => 'checkbox');
        $fields['terms']['after_html'] = '<span id="terms_check">I accept the license(s) for the below items.</span>';

        $string = read_file('./assets/terms/terms.txt');
        $fields['terms_conditions_content'] = array('label' => '  ', 'disabled' => 'disabled', 'readonly' => 'readonly', 'type' => 'textarea', 'class' => 'trems_content', 'value' => $string, 'order' => 25);




        $this->form_builder->set_fields($fields);

        // will set the values of the fields if there is an error... must be after set_fields
        $this->form_builder->set_validator($this->validator);
        $this->form_builder->set_field_values($_POST);
        $this->form_builder->display_errors = TRUE;
        $this->form_builder->form_attrs = 'method="post" action="" id="register"';
        $vars['action'] = 'Register';
        $this->form_builder->submit_value = ' ';
        $this->form_builder->cancel_value = ' ';
        $this->form_builder->show_required = false;
        $this->form_builder->required_text = '<b>Login Info</b><span class="required">*</span>required fields';
        $vars['form'] = $this->form_builder->render($fields, 'divs');



        return $this->load->view('MGTSW/customer_orders/form', $vars, TRUE);
    }

    function _process($data) {
        $this->load->library('validator');


        $this->validator->add_rule('first_name', 'required', '', $this->input->post('first_name'));
        $this->validator->add_rule('last_name', 'required', '', $this->input->post('last_name'));
        $this->validator->add_rule('email', 'valid_email', '', $this->input->post('email'));
        $this->validator->add_rule('street1', 'required', '', $this->input->post('street1'));
        $this->validator->add_rule('city', 'required', '', $this->input->post('city'));
        $this->validator->add_rule('email', 'valid_email', 'Please enter in a valid email', $this->input->post('email'));
        $this->validator->add_rule('state', 'required', '', $this->input->post('state'));
        $this->validator->add_rule('postalcode', 'required', '', $this->input->post('postalcode'));
        $this->validator->add_rule('phone', 'required', '', $this->input->post('phone'));
        $this->validator->add_rule('country', 'required', '', $this->input->post('country'));
//        $this->validator->add_rule('terms', 'required', '', $this->input->post('terms'));
        if ($this->validator->validate()) {

            if (!$this->users_model->record_exists(array('email' => $data['email']))) {
                $data['user_name'] = $data['email'];
                unset($data['street1'], $data['street2'], $data['country'], $data['state'], $data['postalcode'], $data['city']);
                unset($data['confirm_password'], $data['terms_conditions_content'], $data['Register']);
                foreach ($data as $key => $value) {
                    if ($key == 'password') {
                        $insert[$key] = sha1($value);
                    } else
                        $insert[$key] = $value;
                }
                $default_role = $this->config->item('default_role');
                $default_role = $this->roles_model->get_role_id_by_name($default_role);
                $default_role_id = $default_role->id;
                $insert['role_id'] = $default_role_id;
                $this->db->insert('fuel_users', $insert);

                $id_user = $this->db->insert_id();
                $this->logs_model->logit(lang('user_created'));
                return TRUE;
            }
        }
    }

    function view($id = null) {

        $data = array();

        $vars['assets_path'] = $this->config->item('assets_path');
        $vars['body'] = $this->load->view('MGTSW/customer_orders/form', $data, true);


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

}
