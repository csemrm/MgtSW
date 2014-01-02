<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/base_module_model.php');

class NCategories_model extends Base_module_model {

    public $required = array('name');
    public $unique_fields = array('name');

    function __construct() {
        parent::__construct('nrb_categories');
    }

    function list_items($limit = NULL, $offset = NULL, $col = 'last_name', $order = 'asc') {

        $this->db->select('id, name , is_active as Active ', FALSE);
        $data = parent::list_items($limit, $offset, $col, $order);
        foreach ($data as $key => $value) {

            if ($value['Active'] == 1)
                $data[$key]['Active'] = "Yes";
            else if ($value['Active'] == 0)
                $data[$key]['Active'] = "No";
        }
        return $data;
    }

    function form_fields($values = null) {
        $CI = & get_instance();
        $fields = parent::form_fields();
        $user = $CI->fuel_auth->user_data();
        $yes = lang('form_enum_option_yes');
        $no = lang('form_enum_option_no');

        $fields['created_at']['type'] = 'hidden';
        $fields['updated_at']['type'] = 'hidden';
        $fields['created_by']['type'] = 'hidden';
        $fields['updated_by']['type'] = 'hidden';
        $fields['is_active']['type'] = 'enum';
        $fields['is_active']['label'] = 'Active';
        $fields['is_active']['options'] = array('1' => $yes, '0' => $no);



        return $fields;
    }

    function on_before_clean($values) {
        $CI = & get_instance();
        $user = $CI->fuel_auth->user_data();

        if ($values['id']) {
            $values['updated_at'] = datetime_now(true);
            $values['updated_by'] = $user['id'];
        } else {
            $values['created_at'] = datetime_now(true);
            $values['created_by'] = $user['id'];
            $values['updated_at'] = datetime_now(true);
            $values['updated_by'] = $user['id'];
        }
        return $values;
    }

}

class NCategory_model extends Data_record {
    
}
