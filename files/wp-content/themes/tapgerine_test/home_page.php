<?php /* Template Name: Home_Page */
get_header(); ?>

<!-- FULL SCREEN SECTION -->
<section id="HMain"
style="background: url('<?php the_field('h_background'); ?>');
background-size: cover;
background-position: center;">
    <div class="content">
        <h1 class="title">
            <span>a</span>ndrew <span>b</span>orodin
            <span>t</span>echnical <span>t</span>est
        </h1>
        <div class="buttons">
            <a href="<?php the_field('h_first_page_url'); ?>" class="button first-page">
                First Page
            </a>
            <a href="<?php the_field('h_second_page_url'); ?>" class="button second-page">
                Second Page
            </a>
        </div>
    </div>
</section>
<?php get_footer(); ?>