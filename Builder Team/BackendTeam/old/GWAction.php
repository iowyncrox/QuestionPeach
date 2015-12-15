<?php


namespace WordPress\ORM\Model;

use WordPress\ORM\GWBaseModel;

include_once 'C:\Program Files (x86)\Ampps\www\wp\wp-content\plugins\GWU_Builder\lib\GWBaseModel.php';

class GWAction extends GWBaseModel
{
    protected $ActionID;
	protected $QuestionnaireID;
	protected $Question_Number;
	protected $ActionType;
	protected $Content;
	protected $Duration;
	protected $LinkToAction;
	protected $Sequence;


    public static function get_primary_key()
    {
		return array('ActionID', 'QuestionnaireID','Question_Number');
    }

    public static function get_table()
    {
        return 'gwu_action';
    }

    public static function get_searchable_fields()
    {
        $searchableFields = array();
		array_push($searchableFields, 'ActionID', 'QuestionnaireID', 'Question_Number', 'ActionType', 'Content', 'Duration', 'LinkToAction', 'Sequence');
		return $searchableFields;
    }
}

?>