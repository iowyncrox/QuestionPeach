<?php



namespace WordPress\ORM\Model;

use WordPress\ORM\GWBaseModel;

include_once 'C:\Program Files (x86)\Ampps\www\wp\wp-content\plugins\GWU_Builder\lib\GWBaseModel.php';

class GWAnwerChoice extends GWBaseModel
{
    protected $OptionNumber;
	protected $QuestionnaireID;
	protected $Qustion_Number;
	protected $AnsValue;

    public static function get_primary_key()
    {
		return array('OptionNumber','QuestionnaireID','Question_Number');
    }

    public static function get_table()
    {
        return 'gwu_answerchoice';
    }

    public static function get_searchable_fields()
    {
        $searchableFields = array();
		array_push($searchableFields,'OptionNumber','Question_Number','QuestionnaireID','AnsValue');
		return $searchableFields;
    }
}

?>