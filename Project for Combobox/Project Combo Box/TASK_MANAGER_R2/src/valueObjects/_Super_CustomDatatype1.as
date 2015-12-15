/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CustomDatatype1.as.
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
public class _Super_CustomDatatype1 extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CustomDatatype1EntityMetadata;
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
    private var _internal_LAST_NM : String;
    private var _internal_FIRST_NM : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CustomDatatype1()
    {
        _model = new _CustomDatatype1EntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "LAST_NM", model_internal::setterListenerLAST_NM));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "FIRST_NM", model_internal::setterListenerFIRST_NM));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get LAST_NM() : String
    {
        return _internal_LAST_NM;
    }

    [Bindable(event="propertyChange")]
    public function get FIRST_NM() : String
    {
        return _internal_FIRST_NM;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set LAST_NM(value:String) : void
    {
        var oldValue:String = _internal_LAST_NM;
        if (oldValue !== value)
        {
            _internal_LAST_NM = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LAST_NM", oldValue, _internal_LAST_NM));
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

    model_internal function setterListenerLAST_NM(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLAST_NM();
    }

    model_internal function setterListenerFIRST_NM(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFIRST_NM();
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
        if (!_model.LAST_NMIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_LAST_NMValidationFailureMessages);
        }
        if (!_model.FIRST_NMIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_FIRST_NMValidationFailureMessages);
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
    public function get _model() : _CustomDatatype1EntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CustomDatatype1EntityMetadata) : void
    {
        var oldValue : _CustomDatatype1EntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfLAST_NM : Array = null;
    model_internal var _doValidationLastValOfLAST_NM : String;

    model_internal function _doValidationForLAST_NM(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLAST_NM != null && model_internal::_doValidationLastValOfLAST_NM == value)
           return model_internal::_doValidationCacheOfLAST_NM ;

        _model.model_internal::_LAST_NMIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLAST_NMAvailable && _internal_LAST_NM == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "LAST_NM is required"));
        }

        model_internal::_doValidationCacheOfLAST_NM = validationFailures;
        model_internal::_doValidationLastValOfLAST_NM = value;

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
    

}

}
