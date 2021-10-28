<!doctype html>
<html lang = "en">
<head>
<title>Database App</title>
</head>
<body>
<h2>Add New User</h2>
<a href="../<?php base_url(); ?>user/add">Add New</a>
<?php echo form_open("user/add", array("class" => "form_horizontal")); ?>
<div>
<p>User Name</p>
<?php $input_data = array('name' => "user_name"); echo form_input($input_data); ?>
<p>User Email</p>
<?php $input_data = array('name' => "user_email"); echo form_input($input_data); ?>
<p>User Contact</p>
<?php $input_data = array('name' => "user_contact"); echo form_input($input_data); ?>
<p>User Designation</p>
<?php $input_data = array('name' => "user_designation"); echo form_input($input_data); ?>
<?php echo form_submit('submit', 'Add'); ?>
<?php echo form_submit('resetButton', 'Clear'); ?>
<?php echo form_close(); ?>
</body>
</html>

