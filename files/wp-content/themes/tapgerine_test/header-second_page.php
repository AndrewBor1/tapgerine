<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?php echo get_query_var('pagename'); ?></title>
        
        <!-- BOOTSTRAP -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
        integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" 
        crossorigin="anonymous">
        <link rel="stylesheet" 
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
        integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
        crossorigin="anonymous">
        
        <!-- FONT AWESOME -->
        <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>
        <?php wp_head(); ?>
    </head>
    <body <?php body_class(); ?>>
        <header id="SHeader">
            <div class="container menu-container">
                <div class="row menu-row">
                    <div class="col-sm-3 logo-col">
                        <div class="logo">
                            <a href="javascript:void(0);">
                                <img src="<?php the_field('top_logo', 'option'); ?>"
                                alt="Top Logo" class="logo"/>
                                <img src="<?php the_field('top_logo_alt', 'option'); ?>"
                                alt="Top Logo" class="logo-alt"/>
                            </a>
                        </div>
                        <div class="mobile-nav-btn">
                            <a href="javascript:void(0);">
                                <i class="fa fa-bars" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-9 menu-col">
                        <div class="wrapper">
                            <?php $argsNav = array(
                                'theme_location'=>'main',
                                'container'=>''
                            );
                            wp_nav_menu($argsNav); ?>
                            <a href="javascript:void(0);" class="log-in-btn">
                                <?php the_field('log_in_text', 'option'); ?>
                            </a>
                            <div class="dropdown language">
                                <button class="btn dropdown-toggle current-language"
                                type="button" data-toggle="dropdown">
                                    ru
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu language-list">
                                    <li>
                                        <a href="#">
                                            ru
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            en
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        <!-- SIDE NAVIGATION -->
        <div id="SideNav">
            <div class="home-page">
                <a href="http://tapgerine-test.thegustoapp.com/">
                    Home Page
                </a>
            </div>
            <div class="first-page">
                <a href="http://tapgerine-test.thegustoapp.com/first-page/">
                    First Page
                </a>
            </div>
            <div class="second-page">
                <a href="http://tapgerine-test.thegustoapp.com/second-page/">
                    Second Page
                </a>
            </div>
        </div>