<?php 
$CI = & get_instance();
$CI->load->library('fuel_auth'); 
?>
<div class = "user_hader">Customer PO For Factory </div>
<div class = "new_user"><a href = "<?php echo site_url('po_factories/add') ?>">Create A New Customer PO For Factory  </a></div>

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
<span class = "showing">Showing 1-0 of 0 Customer's orders.</span>

<div class="right_body_conten">

    <div class="name_text">Quantity</div>
    <div class="email_here">Shipping Agent</div>
    <div class="status">Notes</div>
    <div class="status">Last Updated</div>
    <div class="status">Action</div>

    <?php foreach ($po_factories as $key => $po_factory): ?>


        <div class="name_text_here"><?php echo $po_factory['quantity'] ?><a href="<?php echo site_url('po_factories/view/' . $po_factory['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $po_factory['shipping_agent'] ?></div>
        <div class="enabled"><?php echo $po_factory['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($po_factory['updated_at']) ?></div>
        <div class="enabled">
            <?php if ($CI->fuel_auth->has_permission('po_factories/edit')) { ?>
                <a class="update"href="<?php echo site_url('po_factories/edit/' . $po_factory['id']) ?>">Update</a> | 
                <?php } if ($CI->fuel_auth->has_permission('po_factories/remove')) { ?>
                <a class="remove" href="<?php echo site_url('po_factories/remove/' . $po_factory['id']) ?>">Remove</a>
            <?php } ?>
        </div>

    <?php endforeach; ?>


</div>