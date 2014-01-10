<?php 
$CI = & get_instance();
$CI->load->library('fuel_auth'); 
?>
<div class = "user_hader">Customer PO For Factory </div>
<div class = "new_user"><a href = "<?php echo site_url('order_shipping_outs/add') ?>">Create A New Customer PO For Factory  </a></div>

<div class = "new_user2">
    <ul>
        <li><strong>Show Status :</strong></li>
        <li><input type = "checkbox" />
        <li>Active </li>
        <li><input type = "checkbox" />
        <li>Completed </li>
        <li><input type = "checkbox" />
        <li>Cancelled </li>
        <li><input type = "checkbox" />
        <li>Show All </li>
        <li><input type = "submit" value = "Submit" /></li>
    </ul>
</div>
<span class = "showing">Showing 1-0 of 0 Customer's order_shipping_outs.</span>

<div class="right_body_conten">

    <div class="name_text">Customer name</div>
    <div class="email_here">Quantity</div>
    <div class="status">Notes</div>
    <div class="status">Last Updated</div>
    <div class="status">Action</div>

    <?php 
//    echo '<pre>';
//    print_r($order_shipping_outs);
//    echo '</pre>';
//    die();
    foreach ($order_shipping_outs as $key => $order_shipping_out): ?>


        <div class="name_text_here"><?php echo $order_shipping_out['customer_name'] ?><a href="<?php echo site_url('order_shipping_outs/view/' . $order_shipping_out['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $order_shipping_out['quantity'] ?></div>
        <div class="enabled"><?php echo $order_shipping_out['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($order_shipping_out['updated_at']) ?></div>
        <div class="enabled">
            <?php if ($CI->fuel_auth->has_permission('order_shipping_outs/edit')) { ?>
                <a class="update"href="<?php echo site_url('order_shipping_outs/edit/' . $order_shipping_out['id']) ?>">Update</a> | 
                <?php } if ($CI->fuel_auth->has_permission('order_shipping_outs/remove')) { ?>
                <a class="remove" href="<?php echo site_url('order_shipping_outs/remove/' . $order_shipping_out['id']) ?>">Remove</a>
            <?php } ?>
        </div>

    <?php endforeach; ?>


</div>