<!doctype html>
<html lang = en">
<head>
<title>Database App</title>
</head>
<body>
<h2>Add New User</h2>
<?php form_open("user/add", array("class" => "form_horizontal")); ?>
<a href="<?php base_url(); ?>user/add">Add New</a>
<table>
<tr>
<th>User Name</th>
<th>User Email</th>
<th>User Contact</th>
<th>User Designation</th>
</tr>
<tr>
<td><input type="text" name="user_name"/></td>
<td><input type="text" name="user_email"/></td>
<td><input type="text" name="user_contact"/></td>
<td><input type="text" name="user_designation"/></td>
</tr>
<tr>
<td><button type="submit">Add</button></td>
<td><button type="Reset">Clear</button></td>
</tr>
</body>
</html>

