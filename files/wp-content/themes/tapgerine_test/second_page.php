<?php /* Template Name: Second_Page */
get_header('second_page'); ?>

<!-- TOP SECTION -->
<section id="STopSection">
    <div class="background-image"
    style="background: url('<?php the_field('s_top_background_img'); ?>');">
    </div>
    <video id="Video" autoplay="autoplay" loop="loop" preload="auto"
    muted="muted">
        <source src="<?php the_field('s_background_video_mp4'); ?>" type="video/mp4"></source>
        <source src="<?php the_field('s_background_video_webm'); ?>" type="video/webm"></source>
        <source src="<?php the_field('s_background_video_ogv'); ?>" type="video/ogg"></source>
    </video>
    <div class="wrapper">
        <div class="content">
            <div class="logo">
                <img src="<?php the_field('s_top_logo'); ?>"/>
            </div>
            <h1 class="description">
                <?php if ($_COOKIE['visited'] === "true") { 
                    the_field('s_top_description_visited');
                } else {
                    the_field('s_top_description');
                } ?>
            </h1>
            <div class="button">
                <a href="javscript:void(0);">
                    <?php the_field('s_top_button_text'); ?>
                </a>
            </div>
        </div>
    </div>
    <div class="scroll-ico">
        <div class="animated-part">
        </div>
    </div>
</section>

<!-- SECTION ABOUT -->
<section id="SAbout">
    <div class="container about-container">
        <div class="row title-row">
            <div class="col-md-12 title-col">
                <h2 class="title">
                    <?php the_field('s_about_title'); ?>
                </h2>
            </div>
        </div>
        <div class="row description-row">
            <div class="col-md-12 description-col">
                <?php the_field('s_about_description'); ?>
            </div>
        </div>
        <?php if (have_rows('s_about_achievements')) : ?>
            <div class="row achievements-row">
                <?php $counter = 0;
                while (have_rows('s_about_achievements')) : the_row();
                    $title = get_sub_field('s_about_achievements_title');
                    $excerpt = get_sub_field('s_about_achievements_excerpt'); ?>
                    <div class="col-sm-4 achievement-col">
                        <div class="wrapper">
                            <div class="content">
                                <div class="title">
                                    <?= $title ?>
                                </div>
                                <div class="excerpt">
                                    <?= $excerpt ?>
                                </div>
                            </div>
                            <?php switch ($counter) {
                                case 0: ?>
                                    <div class="border left">
                                    </div>
                                    <?php break;
                                case 1: ?>
                                    <div class="border top">
                                    </div>
                                    <?php break;
                                case 2: ?>
                                    <div class="border right">
                                    </div>
                                    <?php break;
                            } ?>
                        </div>
                    </div>
                    <?php $counter++;
                endwhile; ?>
            </div>
        <?php endif; ?>
        <div class="row extra-excerpt-row">
            <div class="col-md-12 extra-excerpt-col">
                <?php the_field('s_about_description_extra'); ?>
            </div>
        </div>
        <div class="row view-more-row">
            <div class="col-md-12 view-more-col">
                <a href="javascript:void(0);">
                    <?php the_field('s_about_description_more_text'); ?>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- OUR PRODUCTS SECTION -->
<section id="SProducts">
    <div class="container products-container">
        <div class="row title-row">
            <div class="col-md-12 title-col">
                <h2 class="title">
                    <?php the_field('s_products_title'); ?>
                </h2>
            </div>
        </div>
        <?php if (have_rows('s_product_products')) : ?>
            <div class="row products-row">
                <?php while (have_rows('s_product_products')) : the_row();
                    $icon = get_sub_field('s_product_products_icon');
                    $excerpt = get_sub_field('s_product_products_excerpt');
                    $name = get_sub_field('s_product_products_name');
                    $extraExcerpt = get_sub_field('s_product_products_extra_excerpt');
                    $more = get_sub_field('s_product_products_more'); ?>
                    <div class="col-md-4 product-col">
                        <div class="wrapper match-height">
                            <div class="icon">
                                <img src="<?= $icon ?>" alt="Product Icon"/>
                            </div>
                            <div class="line">
                                <div class="hover-line">
                                </div>
                            </div>
                            <div class="excerpt">
                                <?= $excerpt ?>
                            </div>
                            <div class="name">
                                <?= $name ?>
                            </div>
                            <div class="extra-excerpt">
                                <?= $extraExcerpt ?>
                            </div>
                            <div class="more-button">
                                <a href="javascript:void(0);">
                                    <?= $more ?>
                                </a>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
        <?php endif; ?>
    </div>
</section>

<!-- POPUP FORM -->
<?php if ($_GET['banner'] === '1') { ?>
    <div id="SPopUpForm">
        <div class="wrapper">
            <div class="content">
                <h2 class="title">
                    Download the
                    <span>
                        10 Ways to Make Your Content go Viral Cheet Sheet
                    </span>
                </h2>
                <form id="DownloadForm" action="" method="POST">
                    <div class="email">
                        <input type="email" name="email" required="required" placeholder="E-mail"/>
                    </div>
                    <div class="submit">
                        <input type="submit" value="Download" name="submit" id="DownloadSubmit">
                    </div>
                </form>
                <div class="excerpt">
                    <span>100% Privacy.</span>
                    I will never spam you.
                </div>
                <a href="javascript:void(0);" id="CloseForm">
                    <i class="fa fa-times-circle-o" aria-hidden="true"></i>
                </a>
                <div id="SuccessMessage">
                    <div class="message-content">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Message was sent!
                    </div>
                </div>
                <div id="ErrorMessage">
                    <div class="message-content">
                        <span>&#10008;</span>
                        Send Error!
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>
<?php get_footer(); ?>