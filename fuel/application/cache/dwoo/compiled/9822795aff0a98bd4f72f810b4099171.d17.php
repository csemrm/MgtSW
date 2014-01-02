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
              <link href="/assets/css/mgtsw/css/style.css?c=" media="all" rel="stylesheet"/>
	
    </head>
    <body class="body_bg2">

        <div class="conten">

            <!-- start header contener-->

            <header class="hader">
                <div class="hader_text">
                    <div class="hader_logo"><img src="images/logo.png" height="93" width="189" alt="logo" /></div>
                    <div class="right_text">
                        <strong>Hello Faizus Salehin   <a href="#">( Logout )</a></strong>
                        <p>February 14, 2013</p>
                    </div>
                </div>
            </header>

            <!--  header contener-->

            <!--body-->
            <div class="body_conten">
<div class="left_menue">
    <ul>
        <li><a href="customerenquiry.html">Customer Enquiry</a></li>
        <li><a href="customerquotation.html">Customer Quotation</a></li>
        <li><a href="customersamplerequest.html">Customer Sample Request</a></li>
        <li><a href="customersampleshippingout.html">Customer Sample Shipping Out</a></li>
        <li><a href="customerorder.html">Customer Order </a></li>
        <li><a href="customerordershippingout.html">Customer Order Shipping Out</a></li>
        <li><a href="customerpoforfactory.html">Customer PO for Factory</a></li>
        <li><a href="users.html"><span>Users</span></a></li>
        <li><a href="permissions.html">Permissions</a></li>
        <li><a class="menu_hover" href="categories.html">Categories</a></li>
    </ul>

</div>
</div>
</div>

<footer class="row footer">
    <div class="fotter">© Dutta Tex Online 2013 - All rights reserved.</div>
</footer>

<script src="/assets/js/main.js?c=" type="text/javascript" charset="utf-8"></script>
	
</body>
</html><?php  /* end template body */
return $this->buffer . ob_get_clean();
?>