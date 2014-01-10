<?php
$CI = & get_instance();
$CI->load->library('fuel_auth');
?>
<div class="user_hader">Customer Quotation </div>
<div class="new_user"><a href="<?php echo site_url('quotations/add') ?>">Create A New Customer Quotation </a></div>

<div class="new_user2">
    <ul>
        <li><strong>Show Status :</strong></li>
        <li><input type="checkbox" />
        <li>Active </li>
        <li><input type="checkbox" />
        <li>Completed  </li>
        <li><input type="checkbox" />
        <li>Cancelled  </li>
        <li><input type="checkbox" />
        <li>Show All  </li>
        <li><input type="submit" value="Submit" /></li>
    </ul>
</div>
<span class="showing">Showing 1-8 of 8 Enquiries.</span>

<div class="right_body_conten">

    <div class="name_text">Customer name</div>
    <div class="email_here">Quantity</div>
    <div class="status">Notes</div>
    <div class="status">Last Updated</div>
    <div class="status">Action</div>

    <?php foreach ($quotations as $key => $quotation): ?>


        <div class="name_text_here"><?php echo $quotation['customer_name'] ?><a href="<?php echo site_url('quotations/view/' . $quotation['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $quotation['qty'] ?></div>
        <div class="enabled"><?php echo $quotation['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($quotation['updated_at']) ?></div>
        <div class="enabled">
            <?php if ($CI->fuel_auth->has_permission('quotations/edit')) { ?>
                <a class="update"href="<?php echo site_url('quotations/edit/' . $quotation['id']) ?>">Update</a> | 
            <?php } if ($CI->fuel_auth->has_permission('quotations/remove')) { ?>
                <a class="remove" href="<?php echo site_url('quotations/remove/' . $quotation['id']) ?>">Remove</a>
            <?php } ?>
        </div>
    <?php endforeach; ?>


</div>