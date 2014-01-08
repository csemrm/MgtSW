<div class="user_hader">Customer Order </div>
<div class="new_user"><a href="<?php echo site_url('customer_orders/add') ?>">Create A New Customer Order </a></div>

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
<span class="showing">Showing 1-0 of 0 Customer's orders.</span>

<div class="right_body_conten">

    <div class="name_text">Customer name</div>
    <div class="email_here">Quantity</div>
    <div class="status">Notes</div>
    <div class="status">Last Updated</div>
    <div class="status">Action</div>

    <?php foreach ($customer_orders as $key => $customer_order): ?>


        <div class="name_text_here"><?php echo $customer_order['customer_name'] ?><a href="<?php echo site_url('customer_orders/view/'.$customer_order['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $customer_order['quantity'] ?></div>
        <div class="enabled"><?php echo $customer_order['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($customer_order['updated_at']) ?></div>
        <div class="enabled"><a class="update"href="<?php echo site_url('customer_orders/edit/'.$customer_order['id']) ?>">Update</a> | <a class="remove" href="<?php echo site_url('customer_orders/remove/'.$customer_order['id']) ?>">Remove</a></div>




    <?php endforeach; ?>


</div>