<?php



namespace WordPress\ORM\Model;

use WordPress\ORM\GWBaseModel;

include_once 'C:\Program Files (x86)\Ampps\www\wp\wp-content\plugins\GWU_Builder\lib\GWBaseModel.php';

class GWFlagCheck extends GWBaseModel
{
    protected $FlagID;
	protected $QuestionnaireID;
	protected $Qustion_Number;

    public static function get_primary_key()
    {
		return array('FlagID','QuestionnaireID','Question_Number');
    }

    public static function get_table()
    {
        return 'gwu_flagcheck';
    }

    public static function get_searchable_fields()
    {
        $searchableFields = array();
		array_push($searchableFields,'FlagID','QuestionnaireID','Question_Number');
		return $searchableFields;
    }
}

?>