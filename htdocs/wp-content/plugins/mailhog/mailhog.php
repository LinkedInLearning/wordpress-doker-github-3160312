<?php
/*
Plugin Name: Enable Mailhog
Description: Verbindet in einer Docker-Umgebung WordPress mit Mailhog
Author: Tom Rose
Version: 1.0 
*/

add_action( 'phpmailer_init', 'mailhogsetup' );
function mailhogsetup( $phpmailer ) {
    $phpmailer->Host = 'mailhog';
    $phpmailer->Port = 1025;
    $phpmailer->IsSMTP();
}

add_filter('wp_mail_from', function () { return "name@domain.tld"; });

add_action('wp_mail_failed', 'log_mailer_errors', 10, 1);
function log_mailer_errors( $wp_error ){
  $file = ABSPATH . '/mail.log';

  file_put_contents(
        $file, 
        sprintf("%s: %s\n", 
        strftime('%c'), 
        $wp_error->get_error_message() 
    ));
}

?>