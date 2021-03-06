<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/base_module_model.php');

class quotations_model extends Base_module_model {
 
    function __construct() {
        parent::__construct('nrb_customer_quotations');
    }

    function list_items($limit = NULL, $offset = NULL, $col = 'date', $order = 'asc') {

        $this->db->select('*, customer_name , is_active as Active ', FALSE);
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
        return $this->auto_fields($values);
    }

    protected function auto_fields($values) {
        $CI = & get_instance();
        $user = $CI->fuel_auth->user_data();

        if (!empty($values['id'])) {
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

    public function delete($where) {

        return parent::delete($where);
    }

    public function insert($values) {

        $values = $this->auto_fields($values);

        return $record = parent::insert($values);

//        die($record);
//        
    }

    public function update($values, $where) {
        $values = $this->auto_fields($values);
        return parent::update($values, $where);
    }

}

class quotation_model extends Data_record {
    
}
