<?
namespace WordPress\ORM\Model;

use WordPress\ORM\GWBaseModel\GWQuestionnaire;
use WordPress\ORM\GWBaseModel\GWQuestion;
use WordPress\ORM\GWBaseModel\GWAction;
use WordPress\ORM\GWBaseModel\GWAnswerChoice;
use WordPress\ORM\GWBaseModel\GWFlag;
use WordPress\ORM\GWBaseModel\GWFlagCheck;
use WordPress\ORM\GWBaseModel\GWFlagSet;
use WordPress\ORM\GWBaseModel\GWReponse;
use WordPress\ORM\GWBaseModel\GWSession;

include_once WP_PLUGIN_DIR . '/GWU_Builder/lib/GWBaseModel.php';

class GWWrapper extends GWBaseModel
{
	public static function listQuestion(){
		return GWQuestion::all();
	}
	
	public static function getQuestion($questionNumber, $questionnaireID){
		$keys = array('Question_Number' => $questionNumber, 'QuestionnaireID' => $questionnaireID);
		return GWQuestion::find($keys);
	}
	
	public static function saveQuestion($questionNumber, $questionnaireID, $ansType, $text, $mandatory){
		$gwQuestion = new GWQuestion();
		$gwQuestion->set_Question_Number($questionNumber);
		$gwQuestion->set_QuestionnaireID($questionnaireID);
		$gwQuestion->set_AnsType($ansType);
		$gwQuestion->set_Text($text);
		$gwQuestion->set_Mandatory($mandatory);
		$gwQuestion->save();
	}
	
	public static function listFlag(){
		return GWFlag::all();
	}
	
	public static function getFlag($flagID){
		$keys = array('FlagID' => $flagID);
		return GWFlag::find($keys);
	}
	
	public static function saveFlag($flagID, $flagName, $flagValue){
		$gwFlag = new GWFlag();
		$gwFlag->set_FlagID($flagID);
		$gwFlag->set_FlagName($flagName);
		$gwFlag->set_FlagValue($flagValue);
		
		$gwFlag->save();
	}
	
	public static function listFlagSet(){
		return GWFlagSet::all();
	}
	
	public static function getFlagSet($flagID, $questionnaireID, $questionNumber, $optionNumber){
		$keys = array('FlagID' => $flagID, 'QuestionnaireID' => $questionnaireID, 
		'Question_Number' => $questionNumber, 'OptionNumber' => $optionNumber);
		return GWFlagSet::find($keys);
	}
	
	public static function saveFlagSet($flagID, $questionnaireID, $questionNumber, $optionNumber){
		$gwFlagSet = new GWFlagSet();
		$gwFlagSet->set_FlagID($flagID);
		$gwFlagSet->set_QuestionnaireID($questionnaireID);
		$gwFlagSet->set_Question_Number($questionNumber);
		$gwFlagSet->set_OptionNumber($optionNumber);
		
		$gwFlagSet->save();
	}
	
	public static function listFlagCheck(){
		return GWFlagCheck::all();
	}
	
	public static function getFlagCheck($flagID, $questionnaireID, $questionNumber){
		$keys = array('FlagID' => $flagID, 'QuestionnaireID' => $questionnaireID, 
		'Question_Number' => $questionNumber);
		return GWFlagCheck::find($keys);
	}
	
	public static function saveFlagCheck($flagID, $questionnaireID, $questionNumber, $optionNumber){
		$gwFlagCheck = new GWFlagCheck();
		$gwFlagCheck->set_FlagID($flagID);
		$gwFlagCheck->set_QuestionnaireID($questionnaireID);
		$gwFlagCheck->set_Question_Number($questionNumber);
		
		$gwFlagCheck->save();
	}
	
	
		public function listSessions() {
	
		return GWSession:all();
		
	}
	
	public function getSession($sessionID) {
	
		$keys = array('SessionID' => $sessionID);
		return GWSession::find($keys);
		
	}
	
	public function saveSession($user_name, $surveyCompleted, $duration, $surveyTakenDate, $ip, $city, $country) {
	
		$session = new GWSession();
		$session->set_User_name($user_name);
		$session->set_SurveyCompleted($surveyCompleted);
		$session->set_Duration($duration);
		$session->set_SurveyTakenDate($surveyTakenDate);
		$session->set_IP($ip);
		$session->set_City($city);
		$session->set_Country($country);
		$session->save();
	
	}
	
	public function listResponses() {
	
		return GWResponse::all();
	
	}
	
	public function getResponse($responseID) {
	
		$keys = array('ResponceID' => $responseID);
		return GWResponse::find($keys);
	
	}
	
	public function saveResponse($sessionID, $questionnaireID, $question_Number, $answerNumber, $responceType, $responceContent, $codeToProcessResponce, $processingResult) {
	
		$response = new GWResponse();
		$response->set_SessionID(sessionID);
		$response->set_QuestionnaireID(questionnaireID)
		$response->set_Question_Number(question_Number)
		$response->set_AnswerNumber(answerNumber)
		$response->set_ResponceType(responceType)
		$response->set_ResponceContent(responceContent)
		$response->set_CodeToProcessResponce(codeToProcessResponce)
		$response->set_ProcessingResult(processingResult);
		$response->save();
	
	}

	
	
	
	public function listQestionnaires() {

return GWQuestionnaire::all();
}
public function getQuestionnaire($questionnaireID) {
$keys = array('QuestionnaireID' => $questionnaireID);
return GWQuestionnaire::find($keys);
}
public function saveQuestionnaire($Title, $Topic, $AllowAnonymous, $AllowMultiple, $CreatorName, $DateCreated) {
$questionnaire = new GWQuestionnaire();
$questionnaire->set_Title($Title);
$questionnaire->set_Topic($Topic);
$questionnaire->set_AllowAnonymous($AllowAnonymous);
$questionnaire->set_AllowMultiple($AllowMultiple);
$questionnaire->set_CreatorName($CreatorName);
$questionnaire->set_DateCreated($DateCreated);
$questionnaire->save();
}

//For Action
public function listActions($QuestionnaireID, $Question_Number){
$keys = array('QuestionnaireID'=>$QuestionnaireID,'Question_Number'=>$Question_Number);
return 	GWAction::find($keys);
}
public function getActions($ActionID,$QuestionnaireID,$Question_Number){
$keys = array('ActionID' => $ActionID,'QuestionnaireID'=>$QuestionnaireID,'Question_Number'=>$Question_Number);
return GWAction::find($keys);
}
public function saveAction($QuestionnaireID, $ActionType, $Question_Number, $Content, $Duration, $LinkToAction, $Sequence) {
$action = new GWAction();
//$action->set_ActionID($ActionID);
$action->set_QuestionnaireID($QuestionnaireID);
$action->set_ActionType($ActionType);
$action->set_Question_Number($Question_Number);
$action->set_Content($Content);
$action->set_Duration($Duration);
$action->set_LinkToAction($LinkToAction);
$action->set_Sequence($Sequence);
$action->save();
}

// For GWAnswerChoice
public function listGWAnwerChoice($QuestionnaireID,$Question_Number){
$keys = array('QuestionnaireID'=>$QuestionnaireID,'Question_Number'=>$Question_Number);
return 	GWAnwerChoice::find(keys);
}
public function saveAnswerChoice($OptionNumber, $QuestionnaireID, $Qustion_Number, $AnsValue) {
$answerChoice = new GWAnswerChoice();
$answerChoice->set_OptionNumber($OptionNumber);
$answerChoice->set_QuestionnaireID($QuestionnaireID);
$answerChoice->set_Qustion_Number($Qustion_Number);
$answerChoice->set_AnsValue($AnsValue);
$answerChoice->save();
}
	
}	

?>