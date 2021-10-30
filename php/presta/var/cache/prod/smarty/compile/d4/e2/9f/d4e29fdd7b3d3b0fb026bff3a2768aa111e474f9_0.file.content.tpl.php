<?php
/* Smarty version 3.1.39, created on 2021-10-31 02:16:22
  from '/home/pi/hashmiServer/programs/php/presta/presta4080/themes/default/template/content.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_617db626ca0746_95886995',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd4e29fdd7b3d3b0fb026bff3a2768aa111e474f9' => 
    array (
      0 => '/home/pi/hashmiServer/programs/php/presta/presta4080/themes/default/template/content.tpl',
      1 => 1635624850,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_617db626ca0746_95886995 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="ajax_confirmation" class="alert alert-success hide"></div>
<div id="ajaxBox" style="display:none"></div>

<div class="row">
	<div class="col-lg-12">
		<?php if ((isset($_smarty_tpl->tpl_vars['content']->value))) {?>
			<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

		<?php }?>
	</div>
</div>
<?php }
}
