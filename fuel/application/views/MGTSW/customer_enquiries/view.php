<div class="user_hader">View Customer Enquiry </div>


<div class="right_body_conten">

    <div class="search_box"> <div class="create_a_customer2">      
            <div class="view_page_left">Date: </div>
            <div class="view_page_right"><?php echo english_date_verbose($customer_enquiries['date']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Ticket Number: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['ticket_number']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Category: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['category_id']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Quantity: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['qty']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Material Composition: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['material_composition']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Item Description: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['item_description']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Material Weight: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['material_weight']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Customization: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['customization']); ?></div>
        </div>


        <div class="create_a_customer2">      
            <div class="view_page_left">Item Picture: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['item_picture']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Technical Files: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['technical_files']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Measurement Chart: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['measurement_chart']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Notes: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['notes']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Assignee to: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['assigne_to']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Created At: </div>
            <div class="view_page_right"><?php echo english_date_verbose($customer_enquiries['created_at']); ?></div>
        </div>

        <div class="create_a_customer2">      
            <div class="view_page_left">Created By: </div>
            <div class="view_page_right"><?php echo ($customer_enquiries['created_by']); ?></div>
        </div>

    </div>