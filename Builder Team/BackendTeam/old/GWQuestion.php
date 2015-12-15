<?php



namespace WordPress\ORM\Model;

use WordPress\ORM\GWBaseModel;

include_once 'C:\Program Files (x86)\Ampps\www\wp\wp-content\plugins\GWU_Builder\lib\GWBaseModel.php';

class GWQuestion extends GWBaseModel
{
    protected $Question_Number;
	protected $QuestionnaireID;
	protected $AnsType;
	protected $Text;
	protected $Mandatory;


    public static function get_primary_key()
    {
		return array('QuestionnaireID','Question_Number');
    }

    public static function get_table()
    {
        return 'gwu_question';
    }

    public static function get_searchable_fields()
    {
        $searchableFields = array();
		array_push($searchableFields,'Question_Number','QuestionnaireID','AnsType','Mandatory');
		return $searchableFields;
    }
}

?>