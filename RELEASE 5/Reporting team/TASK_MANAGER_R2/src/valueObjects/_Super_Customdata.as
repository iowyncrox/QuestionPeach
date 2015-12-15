/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Customdata.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Customdata extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CustomdataEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_PARENT_TASK_ID : int;
    private var _internal_ORGANIZATION_NM : String;
    private var _internal_DEADLINE_DT : String;
    private var _internal_FIRST_NM : String;
    private var _internal_SHORT_TITLE_TX : String;
    private var _internal_SHORT_DESCRIPTION_TX : String;
    private var _internal_TASK_ID : int;
    private var _internal_ESTIMATED_COMPLETION_DT : String;
    private var _internal_LONG_DESCRIPTION_TX : String;
    private var _internal_PRIORITY_NR : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Customdata()
    {
        _model = new _CustomdataEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ORGANIZATION_NM", model_internal::setterListenerORGANIZATION_NM));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "DEADLINE_DT", model_internal::setterListenerDEADLINE_DT));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "FIRST_NM", model_internal::setterListenerFIRST_NM));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "SHORT_TITLE_TX", model_internal::setterListenerSHORT_TITLE_TX));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "SHORT_DESCRIPTION_TX", model_internal::setterListenerSHORT_DESCRIPTION_TX));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ESTIMATED_COMPLETION_DT", model_internal::setterListenerESTIMATED_COMPLETION_DT));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "LONG_DESCRIPTION_TX", model_internal::setterListenerLONG_DESCRIPTION_TX));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get PARENT_TASK_ID() : int
    {
        return _internal_PARENT_TASK_ID;
    }

    [Bindable(event="propertyChange")]
    public function get ORGANIZATION_NM() : String
    {
        return _internal_ORGANIZATION_NM;
    }

    [Bindable(event="propertyChange")]
    public function get DEADLINE_DT() : String
    {
        return _internal_DEADLINE_DT;
    }

    [Bindable(event="propertyChange")]
    public function get FIRST_NM() : String
    {
        return _internal_FIRST_NM;
    }

    [Bindable(event="propertyChange")]
    public function get SHORT_TITLE_TX() : String
    {
        return _internal_SHORT_TITLE_TX;
    }

    [Bindable(event="propertyChange")]
    public function get SHORT_DESCRIPTION_TX() : String
    {
        return _internal_SHORT_DESCRIPTION_TX;
    }

    [Bindable(event="propertyChange")]
    public function get TASK_ID() : int
    {
        return _internal_TASK_ID;
    }

    [Bindable(event="propertyChange")]
    public function get ESTIMATED_COMPLETION_DT() : String
    {
        return _internal_ESTIMATED_COMPLETION_DT;
    }

    [Bindable(event="propertyChange")]
    public function get LONG_DESCRIPTION_TX() : String
    {
        return _internal_LONG_DESCRIPTION_TX;
    }

    [Bindable(event="propertyChange")]
    public function get PRIORITY_NR() : int
    {
        return _internal_PRIORITY_NR;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set PARENT_TASK_ID(value:int) : void
    {
        var oldValue:int = _internal_PARENT_TASK_ID;
        if (oldValue !== value)
        {
            _internal_PARENT_TASK_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PARENT_TASK_ID", oldValue, _internal_PARENT_TASK_ID));
        }
    }

    public function set ORGANIZATION_NM(value:String) : void
    {
        var oldValue:String = _internal_ORGANIZATION_NM;
        if (oldValue !== value)
        {
            _internal_ORGANIZATION_NM = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ORGANIZATION_NM", oldValue, _internal_ORGANIZATION_NM));
        }
    }

    public function set DEADLINE_DT(value:String) : void
    {
        var oldValue:String = _internal_DEADLINE_DT;
        if (oldValue !== value)
        {
            _internal_DEADLINE_DT = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DEADLINE_DT", oldValue, _internal_DEADLINE_DT));
        }
    }

    public function set FIRST_NM(value:String) : void
    {
        var oldValue:String = _internal_FIRST_NM;
        if (oldValue !== value)
        {
            _internal_FIRST_NM = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "FIRST_NM", oldValue, _internal_FIRST_NM));
        }
    }

    public function set SHORT_TITLE_TX(value:String) : void
    {
        var oldValue:String = _internal_SHORT_TITLE_TX;
        if (oldValue !== value)
        {
            _internal_SHORT_TITLE_TX = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "SHORT_TITLE_TX", oldValue, _internal_SHORT_TITLE_TX));
        }
    }

    public function set SHORT_DESCRIPTION_TX(value:String) : void
    {
        var oldValue:String = _internal_SHORT_DESCRIPTION_TX;
        if (oldValue !== value)
        {
            _internal_SHORT_DESCRIPTION_TX = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "SHORT_DESCRIPTION_TX", oldValue, _internal_SHORT_DESCRIPTION_TX));
        }
    }

    public function set TASK_ID(value:int) : void
    {
        var oldValue:int = _internal_TASK_ID;
        if (oldValue !== value)
        {
            _internal_TASK_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TASK_ID", oldValue, _internal_TASK_ID));
        }
    }

    public function set ESTIMATED_COMPLETION_DT(value:String) : void
    {
        var oldValue:String = _internal_ESTIMATED_COMPLETION_DT;
        if (oldValue !== value)
        {
            _internal_ESTIMATED_COMPLETION_DT = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ESTIMATED_COMPLETION_DT", oldValue, _internal_ESTIMATED_COMPLETION_DT));
        }
    }

    public function set LONG_DESCRIPTION_TX(value:String) : void
    {
        var oldValue:String = _internal_LONG_DESCRIPTION_TX;
        if (oldValue !== value)
        {
            _internal_LONG_DESCRIPTION_TX = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LONG_DESCRIPTION_TX", oldValue, _internal_LONG_DESCRIPTION_TX));
        }
    }

    public function set PRIORITY_NR(value:int) : void
    {
        var oldValue:int = _internal_PRIORITY_NR;
        if (oldValue !== value)
        {
            _internal_PRIORITY_NR = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PRIORITY_NR", oldValue, _internal_PRIORITY_NR));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerORGANIZATION_NM(value:flash.events.Event):void
    {
        _model.invalidateDependentOnORGANIZATION_NM();
    }

    model_internal function setterListenerDEADLINE_DT(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDEADLINE_DT();
    }

    model_internal function setterListenerFIRST_NM(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFIRST_NM();
    }

    model_internal function setterListenerSHORT_TITLE_TX(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSHORT_TITLE_TX();
    }

    model_internal function setterListenerSHORT_DESCRIPTION_TX(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSHORT_DESCRIPTION_TX();
    }

    model_internal function setterListenerESTIMATED_COMPLETION_DT(value:flash.events.Event):void
    {
        _model.invalidateDependentOnESTIMATED_COMPLETION_DT();
    }

    model_internal function setterListenerLONG_DESCRIPTION_TX(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLONG_DESCRIPTION_TX();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.ORGANIZATION_NMIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ORGANIZATION_NMValidationFailureMessages);
        }
        if (!_model.DEADLINE_DTIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_DEADLINE_DTValidationFailureMessages);
        }
        if (!_model.FIRST_NMIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_FIRST_NMValidationFailureMessages);
        }
        if (!_model.SHORT_TITLE_TXIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_SHORT_TITLE_TXValidationFailureMessages);
        }
        if (!_model.SHORT_DESCRIPTION_TXIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_SHORT_DESCRIPTION_TXValidationFailureMessages);
        }
        if (!_model.ESTIMATED_COMPLETION_DTIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ESTIMATED_COMPLETION_DTValidationFailureMessages);
        }
        if (!_model.LONG_DESCRIPTION_TXIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_LONG_DESCRIPTION_TXValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _CustomdataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CustomdataEntityMetadata) : void
    {
        var oldValue : _CustomdataEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfORGANIZATION_NM : Array = null;
    model_internal var _doValidationLastValOfORGANIZATION_NM : String;

    model_internal function _doValidationForORGANIZATION_NM(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfORGANIZATION_NM != null && model_internal::_doValidationLastValOfORGANIZATION_NM == value)
           return model_internal::_doValidationCacheOfORGANIZATION_NM ;

        _model.model_internal::_ORGANIZATION_NMIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isORGANIZATION_NMAvailable && _internal_ORGANIZATION_NM == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ORGANIZATION_NM is required"));
        }

        model_internal::_doValidationCacheOfORGANIZATION_NM = validationFailures;
        model_internal::_doValidationLastValOfORGANIZATION_NM = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDEADLINE_DT : Array = null;
    model_internal var _doValidationLastValOfDEADLINE_DT : String;

    model_internal function _doValidationForDEADLINE_DT(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDEADLINE_DT != null && model_internal::_doValidationLastValOfDEADLINE_DT == value)
           return model_internal::_doValidationCacheOfDEADLINE_DT ;

        _model.model_internal::_DEADLINE_DTIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDEADLINE_DTAvailable && _internal_DEADLINE_DT == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "DEADLINE_DT is required"));
        }

        model_internal::_doValidationCacheOfDEADLINE_DT = validationFailures;
        model_internal::_doValidationLastValOfDEADLINE_DT = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFIRST_NM : Array = null;
    model_internal var _doValidationLastValOfFIRST_NM : String;

    model_internal function _doValidationForFIRST_NM(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFIRST_NM != null && model_internal::_doValidationLastValOfFIRST_NM == value)
           return model_internal::_doValidationCacheOfFIRST_NM ;

        _model.model_internal::_FIRST_NMIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFIRST_NMAvailable && _internal_FIRST_NM == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "FIRST_NM is required"));
        }

        model_internal::_doValidationCacheOfFIRST_NM = validationFailures;
        model_internal::_doValidationLastValOfFIRST_NM = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSHORT_TITLE_TX : Array = null;
    model_internal var _doValidationLastValOfSHORT_TITLE_TX : String;

    model_internal function _doValidationForSHORT_TITLE_TX(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSHORT_TITLE_TX != null && model_internal::_doValidationLastValOfSHORT_TITLE_TX == value)
           return model_internal::_doValidationCacheOfSHORT_TITLE_TX ;

        _model.model_internal::_SHORT_TITLE_TXIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSHORT_TITLE_TXAvailable && _internal_SHORT_TITLE_TX == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "SHORT_TITLE_TX is required"));
        }

        model_internal::_doValidationCacheOfSHORT_TITLE_TX = validationFailures;
        model_internal::_doValidationLastValOfSHORT_TITLE_TX = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSHORT_DESCRIPTION_TX : Array = null;
    model_internal var _doValidationLastValOfSHORT_DESCRIPTION_TX : String;

    model_internal function _doValidationForSHORT_DESCRIPTION_TX(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSHORT_DESCRIPTION_TX != null && model_internal::_doValidationLastValOfSHORT_DESCRIPTION_TX == value)
           return model_internal::_doValidationCacheOfSHORT_DESCRIPTION_TX ;

        _model.model_internal::_SHORT_DESCRIPTION_TXIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSHORT_DESCRIPTION_TXAvailable && _internal_SHORT_DESCRIPTION_TX == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "SHORT_DESCRIPTION_TX is required"));
        }

        model_internal::_doValidationCacheOfSHORT_DESCRIPTION_TX = validationFailures;
        model_internal::_doValidationLastValOfSHORT_DESCRIPTION_TX = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfESTIMATED_COMPLETION_DT : Array = null;
    model_internal var _doValidationLastValOfESTIMATED_COMPLETION_DT : String;

    model_internal function _doValidationForESTIMATED_COMPLETION_DT(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfESTIMATED_COMPLETION_DT != null && model_internal::_doValidationLastValOfESTIMATED_COMPLETION_DT == value)
           return model_internal::_doValidationCacheOfESTIMATED_COMPLETION_DT ;

        _model.model_internal::_ESTIMATED_COMPLETION_DTIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isESTIMATED_COMPLETION_DTAvailable && _internal_ESTIMATED_COMPLETION_DT == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ESTIMATED_COMPLETION_DT is required"));
        }

        model_internal::_doValidationCacheOfESTIMATED_COMPLETION_DT = validationFailures;
        model_internal::_doValidationLastValOfESTIMATED_COMPLETION_DT = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLONG_DESCRIPTION_TX : Array = null;
    model_internal var _doValidationLastValOfLONG_DESCRIPTION_TX : String;

    model_internal function _doValidationForLONG_DESCRIPTION_TX(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLONG_DESCRIPTION_TX != null && model_internal::_doValidationLastValOfLONG_DESCRIPTION_TX == value)
           return model_internal::_doValidationCacheOfLONG_DESCRIPTION_TX ;

        _model.model_internal::_LONG_DESCRIPTION_TXIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLONG_DESCRIPTION_TXAvailable && _internal_LONG_DESCRIPTION_TX == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "LONG_DESCRIPTION_TX is required"));
        }

        model_internal::_doValidationCacheOfLONG_DESCRIPTION_TX = validationFailures;
        model_internal::_doValidationLastValOfLONG_DESCRIPTION_TX = value;

        return validationFailures;
    }
    

}

}
