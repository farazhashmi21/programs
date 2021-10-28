<!doctype html>
<html lang = "en">
<head>
<title>Database App</title>
</head>
<body>
<a href="<?php base_url(); ?>user/add">Add New</a>
<table>
<tr>
<th>User Name</th>
<th>User Email</th>
<th>User Contact</th>
<th>User Designation</th>
</tr>
<?php foreach($user_data as $ukey => $uval) { ?>
<tr>
<td><?php echo $uval["user_name"]; ?></td>
<td><?php echo $uval["user_email"]; ?></td>
<td><?php echo $uval["user_contact"]; ?></td>
<td><?php echo $uval["user_designation"]; ?></td>
<td><a href="<?php base_url(); ?>user/edit/<?php $uval["user_id"]?>">Edit</a></td>
</tr>
<?php } ?>
</body>
</html>

