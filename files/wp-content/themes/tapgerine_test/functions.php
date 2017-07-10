<?php 

// HIDE ADMIN BAR
show_admin_bar(false);

// ADD FEATURED IMAGE IN POST
add_theme_support('post-thumbnails');

// ADD OPTION PAGES ACF PLUGIN
if (function_exists('acf_add_options_page')) {
    acf_add_options_page();
    acf_add_options_sub_page('Header');
    acf_add_options_sub_page('Footer');
}

// REMOVE EDITOR FROM PAGE EDIT
function reset_editor()
{
    global $_wp_post_type_features;
    $post_type="page";
    $feature = "editor";
    if (!isset($_wp_post_type_features[$post_type]))
    {

    }
    elseif (isset($_wp_post_type_features[$post_type][$feature]))
    unset($_wp_post_type_features[$post_type][$feature]);
}
add_action("init","reset_editor");

// REGISTER MENUS
register_nav_menus(array(
    'main' => 'Top Menu',
));

// ENQUEUE CSS STYLESHEETS
function enqueue_styles() {
    
    // NORMALIZE CSS
    wp_enqueue_style('normalize_css', get_template_directory_uri() . '/css/normalize.css');
    
    //ANIMATE CSS
    wp_enqueue_style('animate_css', get_template_directory_uri() . '/css/animate.css');
    
    // GENERAL STYLESHEET
    wp_enqueue_style('general_styles', get_template_directory_uri() . '/css/style.css');
}
add_action('wp_enqueue_scripts', 'enqueue_styles');

// ENQUEUE SCRIPTS
function enqueue_scripts() {
    
    // ENQUEUE JQUERY
    wp_deregister_script('jquery');
    wp_enqueue_script('jquery', '//ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js',
    array(), '2.2.0', false);
    
    // MATCH HEIGHT JQUERY
    wp_enqueue_script('match_height_jquery', get_template_directory_uri().'/jquery-match-height/jquery.matchHeight.js');
    
    // CUSTOM SCRIPTS
    wp_enqueue_script('main-script', get_template_directory_uri().'/js/script.js');
}
add_action('wp_enqueue_scripts', 'enqueue_scripts');

// RECOMPILE SCSS EVERY LOADING
define('WP_SCSS_ALWAYS_RECOMPILE', true);

// SET COOKIE FOR SECOND PAGE
if ($_GET['banner'] === '2') {
    add_action('init', function() {
        if (!isset($_COOKIE['visited'])) {
            setcookie('visited', 'true', strtotime('+1 day'));
        }
    });
}
?>