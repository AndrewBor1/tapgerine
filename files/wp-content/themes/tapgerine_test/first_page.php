<?php /* Template Name: First_Page */
get_header('first_page'); ?>

<!-- FIRST BANNER SECTION -->
<section id="FFirstBanner"
style="background: url('<?php the_field('f_top_background'); ?>');
background-size: cover;
background-position: center;">
    <div class="content">
        <div class="description">
            <?php $text = get_field('f_top_description');
            $words = explode(" ", $text);
            for ($i = 0; $i < count($words); $i++) {
                if (($words[$i] === "traffic") || ($words[$i] === "cash")) { ?>
                    <span>
                        <?= $words[$i]." " ?>
                    </span>
                <?php } else {
                    echo $words[$i]." ";
                }
            } ?>
        </div>
        <div class="join">
            <a href="<?php the_field('f_top_btn_url'); ?>" class="join-btn">
                <?php the_field('f_top_btn_text'); ?>
            </a>
        </div>
    </div>
</section>

<!-- SECOND BANNER SECTION -->
<section id="FSecondBanner"
style="background: <?php the_field('f_second_bgcolor'); ?>">
    <div class="content">
        <a href="<?php the_field('f_second_banner_url'); ?>">
            <img src="<?php the_field('f_second_banneer_img'); ?>" alt="Banner"/>
        </a>
    </div>
</section>
<?php get_footer(); ?>