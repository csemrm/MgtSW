<?php

if (empty($user_name))
    $user_name = 'Guest';
?>

<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="utf-8">
        <title>
            <?php
            if (!empty($page_title)) {
                echo $page_title;
            }
            ?>
        </title>

        <meta name="keywords" content="<?php
        if (!empty($page_title)) {
            echo $page_title;
        }
        ?>">
        <meta name="description" content="<?php
        if (!empty($page_title)) {
            echo $page_title;
        }
        ?>">
              <?php
              echo css('mgtsw/css/style') . css($css);
              ?>

    </head>
    <body class="body_bg2">

        <div class="conten">

            <!-- start header contener-->

            <header class="hader">
                <div class="hader_text">
                    <div class="hader_logo"><img src="/<?php if (empty($assets_path)) $assets_path = 'assets/'; echo $assets_path; ?>images/logo.png" height="93" width="189" alt="logo" /></div>
                    <div class="right_text">
                        <strong>Hello <?php echo $user_name ?>   <a href="<?php echo site_url('fuel/logout') ?>">( Logout )</a></strong>
                        <p><?php echo english_date_verbose(datetime_now(false)); ?></p>
                    </div>
                </div>
            </header>

            <!--  header contener-->

            <!--body-->
            <div class="body_conten">