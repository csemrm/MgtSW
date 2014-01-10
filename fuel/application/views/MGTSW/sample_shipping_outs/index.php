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

    <?php foreach ($sample_shipping_outs as $key => $sample_shipping_out):// print_obj($sample_shipping_out) ?>


        <div class="name_text_here"><?php echo $sample_shipping_out['created_by'] ?><a href="<?php echo site_url('sample_shipping_outs/view/' . $sample_shipping_out['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $sample_shipping_out['quantity'] ?></div>
        <div class="enabled"><?php echo $sample_shipping_out['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($sample_shipping_out['updated_at']) ?></div>
        <div class="enabled"><a class="update"href="<?php echo site_url('sample_shipping_outs/edit/' . $sample_shipping_out['id']) ?>">Update</a> | <a class="remove" href="<?php echo site_url('sample_shipping_outs/remove/' . $sample_shipping_out['id']) ?>">Remove</a></div>




    <?php endforeach; ?>


</div>