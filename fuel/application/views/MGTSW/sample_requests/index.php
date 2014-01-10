<?php 
$CI = & get_instance();
$CI->load->library('fuel_auth'); 
?>
<div class="user_hader">Customer Sample Request </div>
<div class="new_user"><a href="<?php echo site_url('sample_requests/add') ?>">Create A New Customer Sample Request </a></div>

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

    <div class="name_text">Customer Name</div>
    <div class="email_here">Quantity</div>
    <div class="status">Notes</div>
    <div class="status">Last Updated</div>
    <div class="status">Action</div>

    <?php foreach ($sample_requests as $key => $sample_request): ?>


        <div class="name_text_here"><?php echo $sample_request['created_by'] ?><a href="<?php echo site_url('sample_requests/view/' . $sample_request['id']) ?>">View</a></div>
        <div class="email_text_here"><?php echo $sample_request['quantity'] ?></div>
        <div class="enabled"><?php echo $sample_request['notes'] ?></div>
        <div class="enabled"><?php echo english_date_verbose($sample_request['updated_at']) ?></div>
       <div class="enabled">
            <?php if ($CI->fuel_auth->has_permission('sample_requests/edit')) { ?>
                <a class="update"href="<?php echo site_url('sample_requests/edit/' . $sample_request['id']) ?>">Update</a> | 
                <?php } if ($CI->fuel_auth->has_permission('sample_requests/remove')) { ?>
                <a class="remove" href="<?php echo site_url('sample_requests/remove/' . $sample_request['id']) ?>">Remove</a>
            <?php } ?>
        </div>
    <?php endforeach; ?>


</div>