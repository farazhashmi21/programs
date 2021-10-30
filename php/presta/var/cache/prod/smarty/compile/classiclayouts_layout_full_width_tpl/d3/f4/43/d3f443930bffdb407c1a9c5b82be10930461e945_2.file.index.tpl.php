<?php
/* Smarty version 3.1.39, created on 2021-10-31 02:02:23
  from '/home/pi/hashmiServer/programs/php/presta/themes/classic/templates/index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_617db2dfd0f504_56285915',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd3f443930bffdb407c1a9c5b82be10930461e945' => 
    array (
      0 => '/home/pi/hashmiServer/programs/php/presta/themes/classic/templates/index.tpl',
      1 => 1635624849,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_617db2dfd0f504_56285915 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


    <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1050931637617db2dfd0b277_50988983', 'page_content_container');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'page.tpl');
}
/* {block 'page_content_top'} */
class Block_71171657617db2dfd0bbf6_22813627 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block 'page_content_top'} */
/* {block 'hook_home'} */
class Block_470205271617db2dfd0d139_96862305 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

            <?php echo $_smarty_tpl->tpl_vars['HOOK_HOME']->value;?>

          <?php
}
}
/* {/block 'hook_home'} */
/* {block 'page_content'} */
class Block_329784745617db2dfd0c947_67133604 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

          <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_470205271617db2dfd0d139_96862305', 'hook_home', $this->tplIndex);
?>

        <?php
}
}
/* {/block 'page_content'} */
/* {block 'page_content_container'} */
class Block_1050931637617db2dfd0b277_50988983 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_content_container' => 
  array (
    0 => 'Block_1050931637617db2dfd0b277_50988983',
  ),
  'page_content_top' => 
  array (
    0 => 'Block_71171657617db2dfd0bbf6_22813627',
  ),
  'page_content' => 
  array (
    0 => 'Block_329784745617db2dfd0c947_67133604',
  ),
  'hook_home' => 
  array (
    0 => 'Block_470205271617db2dfd0d139_96862305',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

      <section id="content" class="page-home">
        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_71171657617db2dfd0bbf6_22813627', 'page_content_top', $this->tplIndex);
?>


        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_329784745617db2dfd0c947_67133604', 'page_content', $this->tplIndex);
?>

      </section>
    <?php
}
}
/* {/block 'page_content_container'} */
}
