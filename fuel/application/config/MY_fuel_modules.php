<?php

/*
  |--------------------------------------------------------------------------
  | MY Custom Modules
  |--------------------------------------------------------------------------
  |
  | Specifies the module controller (key) and the name (value) for fuel
 */


/* * ********************* EXAMPLE ***********************************

  $config['modules']['quotes'] = array(
  'preview_path' => 'about/what-they-say',
  );

  $config['modules']['projects'] = array(
  'preview_path' => 'showcase/project/{slug}',
  'sanitize_images' => FALSE // to prevent false positives with xss_clean image sanitation
  );

 * ********************** /EXAMPLE ********************************** */



/* * ********************* OVERWRITES *********************************** */

$config['module_overwrites']['categories']['hidden'] = TRUE; // change to FALSE if you want to use the generic categories module
$config['module_overwrites']['tags']['hidden'] = TRUE; // change to FALSE if you want to use the generic tags module

/* * ********************* /OVERWRITES *********************************** */
$config['modules']['Ncategories'] = array(
    'display_field' => 'name',
    'module_name' => 'Categories',
);
$config['modules']['local_companies'] = array(
    'display_field' => 'name',
    'module_name' => 'Companies',
);
$config['modules']['customer_orders'] = array( 
    'module_name' => 'Customer orders',
);
$config['modules']['order_shipping_outs'] = array( 
    'module_name' => 'Shipping Outs',
);

$config['modules']['po_factories'] = array( 
    'module_name' => 'PO Factories',
);

$config['modules']['process_descriptions'] = array( 
    'module_name' => 'Process Descriptions',
);

$config['modules']['quotations'] = array( 
    'module_name' => 'Quotations',
);

$config['modules']['sample_requests'] = array( 
    'module_name' => 'Sample Requests',
);

$config['modules']['sample_shipping_outs'] = array( 
    'module_name' => 'Sample Shipping Outs',
);


