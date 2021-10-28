<?php
#  echo get_template_directory_uri();
#  echo "<br/>";
#  echo bloginfo("template_directory");
?>
<!DOCTYPE html>
<!--
    Bonativo by TEMPLATE STOCK
    templatestock.co @templatestock
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->

<html lang="en-US">
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?php bloginfo('name'); ?> | <?php bloginfo('description'); ?></title>

        <!-- Bootstrap -->
        <link href="<?php echo bloginfo("template_directory");?>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo bloginfo("template_directory");?>/css/style.css" rel="stylesheet" type="text/css">
        <link href="<?php echo bloginfo("template_directory");?>/css/flexslider.css" rel="stylesheet" type="text/css">
        <link href="<?php echo bloginfo("template_directory");?>/icons/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <link href="<?php echo bloginfo("template_directory");?>/icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
       
        <!--revolution slider setting css-->
        <link href="<?php echo bloginfo("template_directory");?>/rs-plugin/css/settings.css" rel="stylesheet">
        <link href="<?php echo bloginfo("template_directory");?>/css/prettyPhoto.css" rel="stylesheet" type="text/css" />
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <?php wp_head(); ?>