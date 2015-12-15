<?php

/*
Plugin Name: Analyzer
Plugin URI: http://localhost/wordpress
Description: Week_3 test plugin is designed to create and/or drop the Analyzer table, Schedule cron jobs and migrate data 
Version: 1.0
Author: Analyzer Team
Author URI: http://test.questionpeach.com
*/

/**************Global Variable********/
global $msg;
global $analyzer_tbls;
$analyze = new Analyzer();
/**************Hooks******************/

/* Runs when plugin is activated */
register_activation_hook(__FILE__,array('Analyzer','analyzer_install'));

/* Runs on plugin deactivation*/
register_deactivation_hook( __FILE__, array('Analyzer','analyzer_remove') );

/**************ShortCode******************/
add_shortcode( 'QP_JS', 'getJavaScript' );
add_shortcode( "QP_CSS", "getCss" );
add_shortcode( "QP_AdminForm", "getAdminForm" );
add_shortcode( "QP_QuestionnaireList", "getQuestionnaireList" );
add_shortcode( "QP_GeoChart", "getGeoChart" );
add_shortcode('analyzer_create_shtz', function(){
 return analyzer_create_tbl();
});

add_shortcode('analyzer_drop_shtz', function(){
 return $analyze->{'analyzer_drop_tbl'}();
});
 
add_shortcode('analyzer_cron_job_actv_shtz', function(){
 $analyze->{'analyzer_cron_job_activation'}();
 return true;
});

add_shortcode('analyzer_cron_job_deactv_shtz', function(){
 $analyze->{'analyzer_cron_job_deactivation'}();
 return true;
});



add_shortcode('rpt', function(){

 return $analyze->{'analyzer_show_tbls'}();
});



/**************PHP Code******************/
class Analyzer{


	/////////////////////////////analyzer_create_tbl///////////////////
	function analyzer_create_tbl() 
	{
	 require_once( ABSPATH . '/wp-admin/includes/upgrade.php' );
	 global $wpdb;
	 $analyzer_tbls= array('wp_respondee_dim', 'wp_time_dim', 'wp_question_dim', 'wp_location_dim', 'wp_questionnaire_dim','wp_question_response');

	 $msg.="<h4> 1. Verifying if table the following tables exist:</h4><br> ".loop_arr($analyzer_tbls);
 
	 if( $wpdb->get_var( "SHOW TABLES LIKE '".$analyzer_tbls[0]."'" ) != $analyzer_tbls[0] ) 
	 {
	  $msg.="<h4>2. Now creating tables </h4><i>".loop_arr($analyzer_tbls)."</i>";
  
	  $sql = "CREATE TABLE wp_respondee_dim (
	  respondee_id INTEGER UNSIGNED NOT NULL,
	  survey_completed BOOL NULL,
	  survey_taken_date DATE NULL,
	  username VARCHAR(100) NULL,
	  ip VARCHAR(20) NULL,
	  duration TIME NULL,
	  PRIMARY KEY(respondee_id)
	);

	CREATE TABLE wp_time_dim (
	  time_id BIGINT NOT NULL,
	  date DATE NOT NULL,
	  day_2 CHAR(10) NULL,
	  day_of_week INT NULL,
	  day_of_month INT NULL,
	  day_of_year INT NULL,
	  weekend CHAR(10) NOT NULL DEFAULT 'Weekday',
	  week_of_year CHAR(2) NULL,
	  month_3 CHAR(10) NULL,
	  month_of_year CHAR(2) NULL,
	  quarter_of_year INT NULL,
	  year_3 INT NULL,
	  PRIMARY KEY(time_id),
	  UNIQUE INDEX time_dim_uniq(date)
	);

	CREATE TABLE wp_question_dim (
	  question_id INTEGER UNSIGNED NOT NULL,
	  questionnaire_id INTEGER(20) UNSIGNED NOT NULL,
	  question_text TEXT NULL,
	  ans_type VARCHAR(100) NULL,
	  PRIMARY KEY(question_id, questionnaire_id)
	);

	CREATE TABLE wp_location_dim (
	  location_id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	  city VARCHAR(50) NULL,
	  country VARCHAR(50) NULL,
	  PRIMARY KEY(location_id)
	);

	CREATE TABLE wp_questionnaire_dim (
	  questionnaire_id INTEGER(20) UNSIGNED NOT NULL,
	  topic VARCHAR(100) NULL,
	  date_created DATE NULL,
	  allow_anonymous BOOL NULL,
	  allow_multiple BOOL NULL,
	  title VARCHAR(100) NULL,
	  creator_name VARCHAR(100) NULL,
	  PRIMARY KEY(questionnaire_id)
	);

	CREATE TABLE wp_question_response (
	  response_id int(10) unsigned NOT NULL,
	  question_dim_questionnaire_id int(20) unsigned NOT NULL,
	  question_dim_question_id int(10) unsigned NOT NULL,
	  time_dim_time_id bigint(20) DEFAULT NULL,
	  respondee_dim_respondee_id int(10) unsigned NOT NULL,
	  questionnaire_dim_questionnaire_id int(20) unsigned NOT NULL,
	  location_dim_location_id int(10) unsigned DEFAULT NULL,
	  response_content text,
	  response_type varchar(100) DEFAULT NULL,
	  PRIMARY KEY (response_id)
	);
	$charset_collate;";
  
	  dbDelta( $sql );
  
	  $msg.="<h4><br>Successfully created the following tables: <br></h4>".loop_arr($analyzer_tbls);
	 }
	 else
	 {
	  $msg.="<h4>2. Tables:<br></h4> ".loop_arr($analyzer_tbls)."<h4><br> already exist</h4>";
	 }
	  $msg.=analyzer_show_tbls();
	 return $msg;
	}

	/////////////////////////////analyzer_drop_tbl///////////////////
	function analyzer_drop_tbl() 
	{
	 $analyzer_tbls= array('wp_respondee_dim', 'wp_time_dim', 'wp_question_dim', 'wp_location_dim', 'wp_questionnaire_dim','wp_question_response');

	 $msg=loop_arr($analyzer_tbls);
	 require_once( ABSPATH . '/wp-admin/includes/upgrade.php' );
	 global $wpdb;

	 $msg.="<h4>1. Verifying if the following tables exist:</h4><br> ".loop_arr($analyzer_tbls);
	 $msg.=analyzer_show_tbls();
 
	 if($wpdb->get_var( "SHOW TABLES LIKE '".$analyzer_tbls[0]."'" ) == $analyzer_tbls[0])  
	 { 
	  $msg.="<h4>2. Now dropping tables </h4><i>".loop_arr($analyzer_tbls)."</i>";
  
	  $wpdb->query( 'DROP TABLE IF EXISTS wp_respondee_dim,
					 wp_time_dim,
					 wp_question_dim,
					 wp_location_dim,
					 wp_questionnaire_dim,
					 wp_question_response');
	  $msg.="<h4><br>Successfully dropped the following tables:</h4><br>".loop_arr($analyzer_tbls);
	 }
	 else
	 {
	  $msg.="<h4>2. Cannot drop tables since they don't exist:</h4><br> ".loop_arr($analyzer_tbls);
	 }
	 return $msg;
	}
	///////////////////////////// analyzer_show_tbls ////////////////////////////////////
	function analyzer_show_tbls()
	{
	 require_once( ABSPATH . '/wp-admin/includes/upgrade.php' );
	 global $wpdb;
 
	 $qry="select TABLE_NAME from INFORMATION_SCHEMA.TABLES 
		   where TABLE_SCHEMA = 'wordpress' 
		   AND  table_name LIKE 'wp_%dim' 
		   or  table_name='wp_question_response' ";
	 $arr_tbl= $wpdb->get_results($qry);

	 $res_tbl.="<div class='wrap'>";
	 $res_tbl.="<h3>".$title."</h3>";
	 $res_tbl.=" <table>";
	 $res_tbl.="  <tr>";
	 $res_tbl.="   <th>Analyzer tables</th>";
	 $res_tbl.="  </tr>";
	 foreach($arr_tbl as $i)
	 {
	  $res_tbl.="  <tr>";
	  $res_tbl.="   <td>".$i->TABLE_NAME."</td>";
	  $res_tbl.=" </tr>";
	 }
	 $res_tbl.=" </table>";
	  $res_tbl.="<div>";
	 return $res_tbl; 
	}
	/////////////////////////////analyzer_exec_sql///////////////////
	function analyzer_exec_sql($qry, $qry_type) 
	{
	 require_once( ABSPATH . '/wp-admin/includes/upgrade.php' );
	 global $wpdb;
 
	 $msg.="<br>".$db_table_name;
	 $sql_res=null;
	 $res_view="";
	 if($qry_type=='exec')
	 {
	  $sql_res = $wpdb->get_results($qry);
 
	  $res_view.='<ul>';
	  foreach($sql_res as $i) 
	  {
	   $res_view.='<li>'.$i->emp_id.'</li>';
	  }
	  $res_view.='</ul>';
	  $msg.="<br>".$res_view;
	 }
	 else if($qry_type=='update')
	 {
	  $sql_res = $wpdb->query($qry);
	  $msg.='<br>'.'table updated';
	 }
 
	 return $msg;
	}	

	//////////////////////////////////////// analyzer_cron_job_activation functions ////////////////////////////

	function analyzer_cron_job_activation() 
	{
	 if(!wp_next_scheduled('analyzer_data_migration')) 
	 {
	  wp_schedule_event(current_time('timestamp'), 'everyminute', 'analyzer_data_migration');
	 }
	}

	function analyzer_task_to_exec()  
	{
	 return analyzer_exec_sql('INSERT wp_res_2 SELECT * FROM wp_res_1', 'update');
	}

	/////////////////////////////////// analyzer_cron_job_intervals //////////////////////////////////////////////
	function analyzer_cron_job_intervals($schedules) 
	{
	 $schedules['everyminute'] = array(
										'interval' => 60,
										'display' => __( 'Once Every Minute' )
									  );
	 return $schedules;
	}

	////////////////////////////////////// analyzer_cron_job_deactivation ///////////////////////////////////////////
	function analyzer_cron_job_deactivation() 
	{
	 wp_clear_scheduled_hook('analyzer_data_migration');
	}
	///////////////////////////////////// analyzer_cron_jobs action hooks //////////////////////////////////////////
	//add_action('wp', analyzer_cron_job_activation);
	add_filter('cron_schedules', 'analyzer_cron_job_intervals');
	add_action ('analyzer_data_migration', 'analyzer_task_to_exec'); 


	/////////////////////// register_activation_hooks ////////////////////////////////
	register_activation_hook(__FILE__, 'analyzer_create_tbl');
	register_deactivation_hook(__FILE__, 'analyzer_drop_tbl');
	register_deactivation_hook(__FILE__, 'analyzer_cron_job_deactivation');


	/////////////////////////////////// analyzer_utils loop_arr /////////////////////////////////
	function loop_arr($arr)
	{
	 $res='<ul>';
	 foreach ($arr as $i) 
	 {
	  $res.='<li>'.$i .'<li>';
  
	 }
	 $res.='</ul>';

	 return $res;
	}

	/////////////////////////////////// analyzer_utils loop_arr_tbl /////////////////////////////////
	function loop_arr_tbl($arr, $arr_cols, $title)
	{
	 $res_tbl.="<div class='wrap'>";
	 $res_tbl.="<h3>".$title."</h3>";
	 $res_tbl.=" <table class='wp-list-table widefat fixed'>";
	 $res_tbl.="  <tr>";
	 foreach($arr_cols as $i)
	 {
	  $res_tbl.="   <th>".$i."</th>";
	 }
	  $res_tbl.="  </tr>";
	 foreach($arr as $j)
	 {
	  $res_tbl.="  <tr>";
	  $res_tbl.="   <td>".$j."</td>";
	  $res_tbl.=" </tr>";
	 }
	  $res_tbl.=" </table>";
	  $res_tbl.="<div>";
 
	 return $res_tbl;
	}
	
	/*install function, which create tables and
	create analyzer user interface (GUI)*/

	function analyzer_install(){
		global $wpdb;
		//ibou's create table code

		//alem's create page code


		$the_page_title = 'QuestionPeach Analyzer';
		$the_page_name = 'QuestionPeach-analyzer';

		// the menu entry...
		delete_option("my_plugin_page_title");
		add_option("my_plugin_page_title", $the_page_title, '', 'yes');
		// the slug...
		delete_option("my_plugin_page_name");
		add_option("my_plugin_page_name", $the_page_name, '', 'yes');
		// the id...
		delete_option("my_plugin_page_id");
		add_option("my_plugin_page_id", '0', '', 'yes');

		$the_page = get_page_by_title( $the_page_title );

		if ( ! $the_page ) {

			$admin = new Analyzer();
			// Create post object
			$_p = array();
			$_p['post_title'] = $the_page_title;
			$_p['post_content'] = $admin->{'creatUI'}();
			$_p['post_status'] = 'publish';
			$_p['post_type'] = 'page';
			$_p['comment_status'] = 'closed';
			$_p['ping_status'] = 'closed';
			$_p['post_category'] = array(1); // the default 'Uncatrgorised'

			// Insert the post into the database
			$the_page_id = wp_insert_post( $_p );

		}
		else {
			// the plugin may have been previously active and the page may just be trashed...

			$the_page_id = $the_page->ID;

			//make sure the page is not trashed...
			$the_page->post_status = 'publish';
			$the_page_id = wp_update_post( $the_page );

		}

		delete_option( 'my_plugin_page_id' );
		add_option( 'my_plugin_page_id', $the_page_id );
	}

	/*remove function, which drop tables and
	remove analyzer user interface (GUI)*/

	function analyzer_remove(){
		global $wpdb;
		//ibou's drop table code

		//alem's remove page code
		$the_page_title = 'QuestionPeach Analyzer';
		$the_page_name = 'QuestionPeach-analyzer';


		//  the id of our page...
		$the_page_id = get_option( 'my_plugin_page_id' );
		if( $the_page_id ) {

			wp_delete_post( $the_page_id ); // this will trash, not delete

		}

		delete_option("my_plugin_page_title");
		delete_option("my_plugin_page_name");
		delete_option("my_plugin_page_id");
	}

	//create table
	
	//createUI to create a admin panel for analyzer
	function creatUI(){
		$admin = new Analyzer();
		$resultMsg = '';
		if(isset($_SESSION['message']))
		{


			$resultMsg = '<div class="message" class="updated highlight">';

			foreach($_SESSION['message'] as &$error)
			{

				$resultMsg = $resultMsg.'<p> <strong><?php echo "{$error}"; ?></strong></p>';
			}
			unset($_SESSION['message']);

			$resultMsg = $resultMsg.'</div>';

		}

		$resultMsg = $resultMsg. do_shortcode('[QP_CSS]');
		$resultMsg = $resultMsg.'[QP_JS]';
		$resultMsg = $resultMsg.'[QP_GeoChart]';
		$resultMsg = $resultMsg.'[QP_AdminForm]';


		
		return $resultMsg;
	}



	function getTopPanel(){
		// get top panel

		$msg = '<table class="table">
		<tbody>';
		
		return $msg;
	}





	function export_data(){
		// to export data form the the builder table and copy to star schema

		if(true){
			$_SESSION['message'] = array("You have sucessfully Export the database.");

		} else {
			$_SESSION['message'] = array("ERROR".mysql_error());

		}
	}

	function refresh_data(){
		//to refresh the star schema or analyzer tables

	}
	
	
}

/**************Template Code******************/
function getCss(){
	$msg = '<style type="text/css"><!--
	.table {border: 1px solid black}
	.td, .tr {border: 0}
	.tr1 {outline: thin solid black;}
	.td1 { vertical-align: middle; }
	hr { border: 0; color: #fff; width: 100%;}
	div.ui-datepicker{ font-size:10px;}
	
	--></style>';

	return $msg;
}

function getJavaScript(){

 $msg = '<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
	<script  type="text/javascript">
	 	$(function() {
  	$( ".datepicker" ).datepicker({ dateFormat: "yy-mm-dd" });
		});
	</script>';
 return $msg;
}

function getQuestionnaireList(){     
	global $wpdb;
	$msg = '';
	$sql = 'SELECT questionnaire_id as id , topic
	FROM questionnaire_dim order by questionnaire_id DESC';
	$res = $wpdb->get_results($sql);

	if(!empty($res)){
		$msg ='
		<select name="questionnaire" onChange="getQuestion(\'findQuestionnair.php?questionnaire=\'+this.value)"> <option value=""> Select Questionnaire </option>';
		foreach ($res as $rs) {
			$msg = $msg.'<option value="'.$rs->id.'">'.$rs->topic.'</option>';

		}

		$msg = $msg.'</select>';

	} else {
		$msg = 'There is no survey in the system.';
	}
	return $msg;
}

function getAdminForm(){

	$msg = '<form>
	<table class="table">
		<tbody>
			<tr class="tr">
				<td class="td"><strong>Questionnaire</strong></td>
				<td class="td" colspan="3">'.do_shortcode('[QP_QuestionnaireList]').'</td>
			</tr>
			
		<div id="questiondiv">
			<tr class="tr1">
				<td class="td"><strong>Filter By:</strong></td>
				
				<td class="td">			
				<select name="question">
					<option value="">Select Question</option>
      	</select>
      	<br>
        <br>		
			  <select name="location">
					<option value="">Select Location</option>
      	</select>
      <br>
      <br>		
				<select name="responder">
					<option value="">Select Responder</option>
      	</select>
      </td>
      </div>
      <td class="td"><strong>Start Date:</strong>
    	<br><input type="text" name="start" class="datepicker" value="" />
    	<br><strong>End Date:</strong>
   		<br><input type="text" name="end" class="datepicker" value="" /></td>
   		
   		<td class="td1">
   		<input class="button-primary" type="submit" name="submit" value="Execute" />
   		</td>
   		
   		
			</tr>
	
	
		<tbody>
	</table>
	<br>
	<br>
	<!-- the code below should be seen when the survey is selected  -->
	<table class="table">
	<tbody>
	<tr class="tr">
		<td width="80%" colspan="2" class="td"><input class="button-primary" type="submit" name="submit" value="Export Data" /></td>
		<td width="10%" class="td"></td>
		<td width="10%" class="td"><input class="button-primary" type="submit" name="submit" value="Refresh" /></td>
	</tr>
	<tr class="tr">
	<td colspan="4" class="td">
	<table>
	<tr>
	<th>Title</th>
	<th>Date Created</th>
	<th>Created By</th>
	<th>Number Response</th>
	</tr>
	<tr>
	<td>Test</td>
	<td>01/01/2014</td>
	<td>Alemberhan Getahun</td>
	<td>10</td>
	</tr>
	</table>
	</td>
	</tr>
	<tr class="tr">
		<td class="td" width="20%">&nbsp; </td>
		<td class="td" width="30%"><p style="text-align:center; border:2px solid black;"><b>Completed</b> <br>  10 </p></td>
		<td class="td" width="30%"><p style="text-align:center; border:2px solid black;"><b>Average Time</b> <br>  HH:MM:SS </p></td>
		<td class="td" width="20%">&nbsp; </td>
	</tr>
	<tr class="tr">
	<td class="td" colspan="4">
	<div id="chart_div" style="width: 400px; height: 222px; margin:0 auto;"></div>
	</td>
	</tr>
	<tr class="tr">
	<td class="td" colspan="4">
	<table class="table">
	<tr class="tr">
		<td class="td"><strong>1. I should financially support my parents when they are old.</strong></td>
	</tr>
	<tr class="tr">
	<td class="td"><img align="middle" src="http://chart.apis.google.com/chart?cht=p3&chs=450x200&chd=t:2,4,3,1&chl=Strongly Agree|Agree|Disagree|Strongly Disagree&chtt=Question%20One&chco=ff0000"/>
  </td></tr>
	</table>
	</td>
	</tr>
	<tbody>
	</table>
	</form>';
	
	return $msg;
} 
   




function getSurvey($limit){
	//get survey from the fact table
	global $wpdb;
	$sql = 'SELECT id, title, count(*) as total_response
	FROM questionnior_fact group by id';
	$res = $wpdb->get_results($sql);
	if(!empty($res)){
		$msg = '<table style="border: 1;">
		<tr> <th>Title</th><th>No. of Response</th> <th></th></tr>';
		foreach ($res as $rs) {
			$msg = $msg. '<tr> <td>'.$rs->title.'</td><td>'.$rs->total_response.'</td> <td><a>View Result</a></td></tr>';
			//echo	$rs->option_value;
		}
		$msg = $msg. '</table>';
	} else {
		$msg = 'There is no survey in the system.';
	}

	return $msg;
}

function getFilterPanel(){


	global $wpdb;
	$msg = '';
	$sql = 'SELECT id, title
	FROM questionnior_fact group by id';
	$res = $wpdb->get_results($sql);

	if(!empty($res)){
		$msg ='<tr class="tr">
		<td class ="td" colspan="3">
		<select name="survey"> <option value=""> Select Survey </option>';
		foreach ($res as $rs) {
			$msg = $msg.'<option value="'.$rs->id.'">'.$rs->title.'</option>';

		}

		$msg = $msg.'</select>';

		$msg = $msg.'</td></tr>';
	}
	return $msg;
}

function getGeoChart(){
	$country = array(array('Country'), array('USA'), array('India'), array('China'));
	$geoChart = '<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script type="text/javascript">
		google.load("visualization", "1", {"packages": ["geochart"]}); 
		google.setOnLoadCallback(drawRegionsMap); 
		function drawRegionsMap() { 
			var data = google.visualization.arrayToDataTable('.json_encode($country).'); 	
			var options = {}; 
			var chart = new google.visualization.GeoChart(document.getElementById("chart_div")); 
			chart.draw(data, options); 
			}; 
		</script>';
	return $geoChart;
	}

	
	

?>
<!--**************AJAX Function*********************-->
<script>
function getXMLHTTP() { //fuction to return the xml http object
		var xmlhttp=false;	
		try{
			xmlhttp=new XMLHttpRequest();
		}
		catch(e)	{		
			try{			
				xmlhttp= new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch(e){
				try{
				xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
				}
				catch(e1){
					xmlhttp=false;
				}
			}
		}
		 	
		return xmlhttp;
	}
	
	
	
	function getQuestion(strURL) {		
		
		var req = getXMLHTTP();
		
		if (req) {
			
			req.onreadystatechange = function() {
				if (req.readyState == 4) {
					// only if "OK"
					if (req.status == 200) {						
						document.getElementById('questiondiv').innerHTML=req.responseText;						
					} else {
						alert("There was a problem while using XMLHTTP:\n" + req.statusText);
					}
				}				
			}			
			req.open("GET", strURL, true);
			req.send(null);
		}
				
	}

	function getResponder (strURL) {		
		
		var req = getXMLHTTP();
		
		if (req) {
			
			req.onreadystatechange = function() {
				if (req.readyState == 4) {
					// only if "OK"
					if (req.status == 200) {						
						document.getElementById('Responderdiv').innerHTML=req.responseText;						
					} else {
						alert("There was a problem while using XMLHTTP:\n" + req.statusText);
					}
				}				
			}			
			req.open("GET", strURL, true);
			req.send(null);
		}
				
	}
</script>