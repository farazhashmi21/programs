<?php
/* Smarty version 3.1.39, created on 2021-10-31 02:02:23
  from '/home/pi/hashmiServer/programs/php/presta/themes/classic/templates/catalog/_partials/product-flags.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_617db2dfa30a22_88184625',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cec842a5b95299a2922ea9cecb4c1bd31671e93d' => 
    array (
      0 => '/home/pi/hashmiServer/programs/php/presta/themes/classic/templates/catalog/_partials/product-flags.tpl',
      1 => 1635624849,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_617db2dfa30a22_88184625 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->compiled->nocache_hash = '1665587927617db2df9a7f97_28740427';
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1652216855617db2dfa2b1e6_11118403', 'product_flags');
?>

<?php }
/* {block 'product_flags'} */
class Block_1652216855617db2dfa2b1e6_11118403 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'product_flags' => 
  array (
    0 => 'Block_1652216855617db2dfa2b1e6_11118403',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <ul class="product-flags js-product-flags">
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['product']->value['flags'], 'flag');
$_smarty_tpl->tpl_vars['flag']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['flag']->value) {
$_smarty_tpl->tpl_vars['flag']->do_else = false;
?>
            <li class="product-flag <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['flag']->value['type'], ENT_QUOTES, 'UTF-8');?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['flag']->value['label'], ENT_QUOTES, 'UTF-8');?>
</li>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </ul>
<?php
}
}
/* {/block 'product_flags'} */
}
