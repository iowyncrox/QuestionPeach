<?php
/*
Plugin Name: Analyzer
Plugin URI: http://localhost/wordpress
Description: Test plugin to create and/or drop 'response_fact' table
Version: 1.0
Author: Analyzer Team
Author URI: http://localhost/wordpress
*/
global $msg;
global $table_name;

////////////////////////// Plugin shortcode ///////////////////////////////////////////////
/* Use labels [analyzer_create_shtz] and [analyzer_drop_shtz] to test plugins in WP page*/

add_shortcode('analyzer_create_shtz', function(){
 return analyzer_create_tbl();
});

add_shortcode('analyzer_drop_shtz', function(){
 return analyzer_drop_tbl();
});


/////////////////////////////analyzer_create_tbl///////////////////
function analyzer_create_tbl() 
{
 require_once( ABSPATH . '/wp-admin/includes/upgrade.php' );
 global $wpdb;
 $db_table_name = $wpdb->prefix .'response_fact';
 $msg.="<h4>1. Verifying if table '<i>$db_table_name</i>' exists</h4>";

 if( $wpdb->get_var( "SHOW TABLES LIKE '$db_table_name'" ) != $db_table_name ) 
 {
  $msg.="<h4>2. Now creating table '<i>$db_table_name</i>' </h4>";
  
  $sql = "CREATE TABLE " . $db_table_name . " (
			id INTEGER UNSIGNED NOT NULL,
			type varchar(55) NOT NULL,
			desc_cmt longtext NOT NULL,
			dt_data datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
			PRIMARY KEY (id)
		) $charset_collate;";
  dbDelta( $sql );
  
  $msg.="<h4><br>Table '<i>$db_table_name</i>' successfully created!</h4>";
 }
 else
 {
  $msg.="<h4>2. Table '<i>$db_table_name</i>' already exists</h4>";
 }
 return $msg;
}

/////////////////////////////analyzer_drop_tbl///////////////////
function analyzer_drop_tbl() 
{
 require_once( ABSPATH . '/wp-admin/includes/upgrade.php' );
 global $wpdb;
 $db_table_name = $wpdb->prefix . 'response_fact';
 $msg.="<h4>1. Verifying if table '<i>$db_table_name</i>' exists</h4>";

 if($wpdb->get_var( "SHOW TABLES LIKE '$db_table_name'" ) == $db_table_name ) 
 {
  $msg.="<h4>2. Now dropping table '<i>$db_table_name</i>' </h4>";   
  
  $wpdb->query( 'DROP TABLE IF EXISTS '. $db_table_name);
  $msg.="<h4><br>Table '<i>$db_table_name</i>' successfully dropped!</h4>";
 }
 else
 {
  $msg.="<h4>2. Table '<i>$db_table_name</i>' does not already exist</h4>";
 }
 
 return $msg;
}


//register_activation_hook(__FILE__, 'analyzer_create_tbl');


?>