<div class="user_hader">Customer Sample Shipping Out </div>
<div class="new_user"><a href="<?php echo site_url('sample_shipping_outs/add') ?>">Create A New Customer Sample Shipping Out </a></div>

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

    <?php foreach ($sample_shipping_outs as $key => $customer_enquiry): ?>


        <div class="name_text_here"><?php echo $customer_enquiry['ticket_number'] ?><a href="<?php echo site_url('sample_shipping_outs/view/' . $customer_enquiry['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $customer_enquiry['qty'] ?></div>
        <div class="enabled"><?php echo $customer_enquiry['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($customer_enquiry['updated_at']) ?></div>
        <div class="enabled"><a class="update"href="<?php echo site_url('sample_shipping_outs/edit/' . $customer_enquiry['id']) ?>">Update</a> | <a class="remove" href="<?php echo site_url('sample_shipping_outs/remove/' . $customer_enquiry['id']) ?>">Remove</a></div>




    <?php endforeach; ?>


</div>