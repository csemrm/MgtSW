<?php
/* template head */
/* end template head */ ob_start(); /* template body */ ?><!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="utf-8">
        <title>
            Home        </title>

        <meta name="keywords" content="Home">
        <meta name="description" content="Home">
              <link href="//assets/css/mgtsw/css/style.css?c=" media="all" rel="stylesheet"/>
	
    </head>
    <body class="body_bg2">

        <div class="conten">

            <!-- start header contener-->

            <header class="hader">
                <div class="hader_text">
                    <div class="hader_logo"><img src="/assets/images/logo.png" height="93" width="189" alt="logo" /></div>
                    <div class="right_text">
                        <strong>Hello Guest   <a href="http://milon:8080/index.php/fuel/logout">( Logout )</a></strong>
                        <p>Jan. 03, 2014</p>
                    </div>
                </div>
            </header>

            <!--  header contener-->

            <!--body-->
            <div class="body_conten">
 
<ul>
    <li><a href="http://milon:8080/index.php">Customer Enquiry</a></li>
    <li><a href="http://milon:8080/index.php/quotations">Customer Quotation</a></li>
    <li><a href="http://milon:8080/index.php/sample_requests">Customer Sample Request</a></li>
    <li><a href="http://milon:8080/index.php/sample_shipping_outs">Customer Sample Shipping Out</a></li>
    <li><a href="http://milon:8080/index.php/customer_orders">Customer Order </a></li>
    <li><a href="http://milon:8080/index.php/order_shipping_outs">Customer Order Shipping Out</a></li>
    <li><a href="http://milon:8080/index.php/po_factories">Customer PO for Factory</a></li>  
</ul>


</div>
</div>

<footer class="row footer">
    <div class="fotter">© Dutta Tex Online 2013 - All rights reserved.</div>
</footer>

<script src="//assets/js/main.js?c=" type="text/javascript" charset="utf-8"></script>
	
</body>
</html><?php  /* end template body */
return $this->buffer . ob_get_clean();
?>