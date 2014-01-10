<?php 
$CI = & get_instance();
$CI->load->library('fuel_auth'); 
?>
<div class="user_hader">Customer Enquiry </div>
<div class="new_user"><a href="<?php echo site_url('customer_enquiries/add') ?>">Create A New Customer Enquiry </a></div>

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

    <div class="name_text">Ticket Number</div>
    <div class="email_here">Quantity</div>
    <div class="status">Status</div>
    <div class="status">Last Updated</div>
    <div class="status">Action</div>

    <?php foreach ($customer_enquiries as $key => $customer_enquiry): ?>


        <div class="name_text_here"><?php echo $customer_enquiry['ticket_number'] ?><a href="<?php echo site_url('customer_enquiries/view/' . $customer_enquiry['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $customer_enquiry['qty'] ?></div>
        <div class="enabled"><?php echo $customer_enquiry['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($customer_enquiry['updated_at']) ?></div>
        <div class="enabled">
            <?php if ($CI->fuel_auth->has_permission('customer_enquiries/edit')) { ?>
                <a class="update"href="<?php echo site_url('customer_enquiries/edit/' . $customer_enquiry['id']) ?>">Update</a> | 
            <?php } if ($CI->fuel_auth->has_permission('customer_enquiries/remove')) { ?>
                <a class="remove" href="<?php echo site_url('customer_enquiries/remove/' . $customer_enquiry['id']) ?>">Remove</a>
            <?php } ?>
        </div>




    <?php endforeach; ?>


</div>