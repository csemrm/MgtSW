<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Roles_model extends Base_module_model {

    public $required = array('role_name');

    function __construct() {
        parent::__construct('role');
    }

    function list_items($limit = NULL, $offset = NULL, $col = 'role_name', $order = 'desc') {

        $this->db->select('id, 
			role_name, 
			role_description, 
			');
        $data = parent::list_items($limit, $offset, $col, $order);
        return $data;
    }

    function form_fields($values = array()) {

        // ******************* NEW RELATED CATEGORY FIELD BEGIN *******************
        $related = array('permissions' => 'role_permissions_model');
        // ******************* NEW RELATED CATEGORY FIELD END *******************

        $fields = parent::form_fields($values, $related);
        $fields['permissions']['class'] = '';
        $CI = & get_instance();
        $CI->load->model('permissions_model');
        $CI->load->model('role_permissions_model');



        return $fields;
    }

    function on_before_validate($values) {
        if (!empty($values['id'])) {
            $this->add_validation('role_name', array(&$this, 'is_editable'), lang('error_val_empty_or_already_exists', 'role_name'), array('role_name', $values['id']));
        } else {
            $this->add_validation('role_name', array(&$this, 'is_new'), lang('error_val_empty_or_already_exists', 'role_name'), 'role_name');
        }
        return $values;
    }

    function on_after_delete($where) {
        $CI = & get_instance();
        $CI->load->model('role_permissions_model');
        if (is_array($where) && isset($where['id'])) {
            $where = array('role_id' => $where['id']);
            $CI->role_permissions_model->delete($where);
        }
    }

    function on_after_save($values) {
        $data = (!empty($this->normalized_save_data['permissions'])) ? $this->normalized_save_data['permissions'] : array();
        $this->save_related('role_permissions_model', array('role_id' => $values['id']), array('permission_id' => $data));
    }

    function get_role_id_by_name($name) {
        $result = $this->db->get_where('role', array('role_name' => $name));
        return $result->row();
    }

}

class Role_model extends Data_record {
    
}