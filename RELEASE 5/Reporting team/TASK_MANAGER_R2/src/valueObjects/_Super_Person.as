/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Person.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[Managed]
[ExcludeClass]
public class _Super_Person extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _PersonEntityMetadata;
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
    private var _internal_PERSON_ID : int;
    private var _internal_FIRST_NM : String;
    private var _internal_LAST_NM : String;
    private var _internal_EMAIL_ADDRESS_TX : String;
    private var _internal_PHONE_NUMBER_TX : String;
    private var _internal_CREATED_BY_USER_NM : String;
    private var _internal_CREATED_DTTM : Date;
    private var _internal_LAST_UPDATED_BY_USER_NM : String;
    private var _internal_LAST_UPDATED_DTTM : Date;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Person()
    {
        _model = new _PersonEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get PERSON_ID() : int
    {
        return _internal_PERSON_ID;
    }

    [Bindable(event="propertyChange")]
    public function get FIRST_NM() : String
    {
        return _internal_FIRST_NM;
    }

    [Bindable(event="propertyChange")]
    public function get LAST_NM() : String
    {
        return _internal_LAST_NM;
    }

    [Bindable(event="propertyChange")]
    public function get EMAIL_ADDRESS_TX() : String
    {
        return _internal_EMAIL_ADDRESS_TX;
    }

    [Bindable(event="propertyChange")]
    public function get PHONE_NUMBER_TX() : String
    {
        return _internal_PHONE_NUMBER_TX;
    }

    [Bindable(event="propertyChange")]
    public function get CREATED_BY_USER_NM() : String
    {
        return _internal_CREATED_BY_USER_NM;
    }

    [Bindable(event="propertyChange")]
    public function get CREATED_DTTM() : Date
    {
        return _internal_CREATED_DTTM;
    }

    [Bindable(event="propertyChange")]
    public function get LAST_UPDATED_BY_USER_NM() : String
    {
        return _internal_LAST_UPDATED_BY_USER_NM;
    }

    [Bindable(event="propertyChange")]
    public function get LAST_UPDATED_DTTM() : Date
    {
        return _internal_LAST_UPDATED_DTTM;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set PERSON_ID(value:int) : void
    {
        var oldValue:int = _internal_PERSON_ID;
        if (oldValue !== value)
        {
            _internal_PERSON_ID = value;
        }
    }

    public function set FIRST_NM(value:String) : void
    {
        var oldValue:String = _internal_FIRST_NM;
        if (oldValue !== value)
        {
            _internal_FIRST_NM = value;
        }
    }

    public function set LAST_NM(value:String) : void
    {
        var oldValue:String = _internal_LAST_NM;
        if (oldValue !== value)
        {
            _internal_LAST_NM = value;
        }
    }

    public function set EMAIL_ADDRESS_TX(value:String) : void
    {
        var oldValue:String = _internal_EMAIL_ADDRESS_TX;
        if (oldValue !== value)
        {
            _internal_EMAIL_ADDRESS_TX = value;
        }
    }

    public function set PHONE_NUMBER_TX(value:String) : void
    {
        var oldValue:String = _internal_PHONE_NUMBER_TX;
        if (oldValue !== value)
        {
            _internal_PHONE_NUMBER_TX = value;
        }
    }

    public function set CREATED_BY_USER_NM(value:String) : void
    {
        var oldValue:String = _internal_CREATED_BY_USER_NM;
        if (oldValue !== value)
        {
            _internal_CREATED_BY_USER_NM = value;
        }
    }

    public function set CREATED_DTTM(value:Date) : void
    {
        var oldValue:Date = _internal_CREATED_DTTM;
        if (oldValue !== value)
        {
            _internal_CREATED_DTTM = value;
        }
    }

    public function set LAST_UPDATED_BY_USER_NM(value:String) : void
    {
        var oldValue:String = _internal_LAST_UPDATED_BY_USER_NM;
        if (oldValue !== value)
        {
            _internal_LAST_UPDATED_BY_USER_NM = value;
        }
    }

    public function set LAST_UPDATED_DTTM(value:Date) : void
    {
        var oldValue:Date = _internal_LAST_UPDATED_DTTM;
        if (oldValue !== value)
        {
            _internal_LAST_UPDATED_DTTM = value;
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
    public function get _model() : _PersonEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PersonEntityMetadata) : void
    {
        var oldValue : _PersonEntityMetadata = model_internal::_dminternal_model;
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


}

}
