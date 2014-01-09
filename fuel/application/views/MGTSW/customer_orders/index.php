
<div class = "user_hader">Customer PO For Factory </div>
<div class = "new_user"><a href = "<?php echo site_url('customer_shipping_out/add') ?>">Create A New Customer PO For Factory  </a></div>

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

    <div class="name_text">Customer_name</div>
    <div class="email_here">quantity</div>
    <div class="status">Notes</div>
    <div class="status">Last Updated</div>
    <div class="status">Action</div>

    <?php foreach ($po_factories as $key => $customer_shipping_out): ?>


        <div class="name_text_here"><?php echo $customer_shipping_out['customer_name'] ?><a href="<?php echo site_url('customer_shipping_out/view/' . $customer_shipping_out['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $customer_shipping_out['quantity'] ?></div>
        <div class="enabled"><?php echo $customer_shipping_out['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($customer_shipping_out['updated_at']) ?></div>
        <div class="enabled"><a class="update"href="<?php echo site_url('customer_shipping_out/edit/' . $customer_shipping_out['id']) ?>">Update</a> | <a class="remove" href="<?php echo site_url('customer_shipping_out/remove/' . $customer_shipping_out['id']) ?>">Remove</a></div>




    <?php endforeach; ?>


</div>