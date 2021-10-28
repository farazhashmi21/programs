<?php
  // Page.php
  get_header();
  $logo = get_header_image();
?>
<img src="<?php echo $logo; ?>" alt=""/>
<div class="header">
  <h1><?php the_title(); ?></h1>
  <?php the_post_thumbnail('full'); ?>
  <hr/>
  <?php 
while ( have_posts() ) :
  the_post();
  the_content();
  if ( comments_open() || get_comments_number() ) {
    comments_template();
  }
endwhile; ?>
</div>
<?php
  get_footer();
?>