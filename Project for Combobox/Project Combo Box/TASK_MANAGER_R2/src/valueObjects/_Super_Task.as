/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Task.as.
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
public class _Super_Task extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _TaskEntityMetadata;
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
    private var _internal_TASK_ID : int;
    private var _internal_PARENT_TASK_ID : int;
    private var _internal_priority_nr : int;
    private var _internal_SHORT_TITLE_TX : String;
    private var _internal_SHORT_DESCRIPTION_TX : String;
    private var _internal_LONG_DESCRIPTION_TX : String;
    private var _internal_DEADLINE_DT : Date;
    private var _internal_ESTIMATED_COMPLETION_DT : Date;
    private var _internal_COMPLETION_DT : Date;
    private var _internal_RECIPIENT_PERSON_ID : int;
    private var _internal_ASSIGNED_ORGANIZATION_ID : int;
    private var _internal_ASSIGNED_TO_PERSON_ID : int;
    private var _internal_ASSIGNED_BY_PERSON_ID : int;
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

    public function _Super_Task()
    {
        _model = new _TaskEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get TASK_ID() : int
    {
        return _internal_TASK_ID;
    }

    [Bindable(event="propertyChange")]
    public function get PARENT_TASK_ID() : int
    {
        return _internal_PARENT_TASK_ID;
    }

    [Bindable(event="propertyChange")]
    public function get priority_nr() : int
    {
        return _internal_priority_nr;
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
    public function get LONG_DESCRIPTION_TX() : String
    {
        return _internal_LONG_DESCRIPTION_TX;
    }

    [Bindable(event="propertyChange")]
    public function get DEADLINE_DT() : Date
    {
        return _internal_DEADLINE_DT;
    }

    [Bindable(event="propertyChange")]
    public function get ESTIMATED_COMPLETION_DT() : Date
    {
        return _internal_ESTIMATED_COMPLETION_DT;
    }

    [Bindable(event="propertyChange")]
    public function get COMPLETION_DT() : Date
    {
        return _internal_COMPLETION_DT;
    }

    [Bindable(event="propertyChange")]
    public function get RECIPIENT_PERSON_ID() : int
    {
        return _internal_RECIPIENT_PERSON_ID;
    }

    [Bindable(event="propertyChange")]
    public function get ASSIGNED_ORGANIZATION_ID() : int
    {
        return _internal_ASSIGNED_ORGANIZATION_ID;
    }

    [Bindable(event="propertyChange")]
    public function get ASSIGNED_TO_PERSON_ID() : int
    {
        return _internal_ASSIGNED_TO_PERSON_ID;
    }

    [Bindable(event="propertyChange")]
    public function get ASSIGNED_BY_PERSON_ID() : int
    {
        return _internal_ASSIGNED_BY_PERSON_ID;
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

    public function set TASK_ID(value:int) : void
    {
        var oldValue:int = _internal_TASK_ID;
        if (oldValue !== value)
        {
            _internal_TASK_ID = value;
        }
    }

    public function set PARENT_TASK_ID(value:int) : void
    {
        var oldValue:int = _internal_PARENT_TASK_ID;
        if (oldValue !== value)
        {
            _internal_PARENT_TASK_ID = value;
        }
    }

    public function set priority_nr(value:int) : void
    {
        var oldValue:int = _internal_priority_nr;
        if (oldValue !== value)
        {
            _internal_priority_nr = value;
        }
    }

    public function set SHORT_TITLE_TX(value:String) : void
    {
        var oldValue:String = _internal_SHORT_TITLE_TX;
        if (oldValue !== value)
        {
            _internal_SHORT_TITLE_TX = value;
        }
    }

    public function set SHORT_DESCRIPTION_TX(value:String) : void
    {
        var oldValue:String = _internal_SHORT_DESCRIPTION_TX;
        if (oldValue !== value)
        {
            _internal_SHORT_DESCRIPTION_TX = value;
        }
    }

    public function set LONG_DESCRIPTION_TX(value:String) : void
    {
        var oldValue:String = _internal_LONG_DESCRIPTION_TX;
        if (oldValue !== value)
        {
            _internal_LONG_DESCRIPTION_TX = value;
        }
    }

    public function set DEADLINE_DT(value:Date) : void
    {
        var oldValue:Date = _internal_DEADLINE_DT;
        if (oldValue !== value)
        {
            _internal_DEADLINE_DT = value;
        }
    }

    public function set ESTIMATED_COMPLETION_DT(value:Date) : void
    {
        var oldValue:Date = _internal_ESTIMATED_COMPLETION_DT;
        if (oldValue !== value)
        {
            _internal_ESTIMATED_COMPLETION_DT = value;
        }
    }

    public function set COMPLETION_DT(value:Date) : void
    {
        var oldValue:Date = _internal_COMPLETION_DT;
        if (oldValue !== value)
        {
            _internal_COMPLETION_DT = value;
        }
    }

    public function set RECIPIENT_PERSON_ID(value:int) : void
    {
        var oldValue:int = _internal_RECIPIENT_PERSON_ID;
        if (oldValue !== value)
        {
            _internal_RECIPIENT_PERSON_ID = value;
        }
    }

    public function set ASSIGNED_ORGANIZATION_ID(value:int) : void
    {
        var oldValue:int = _internal_ASSIGNED_ORGANIZATION_ID;
        if (oldValue !== value)
        {
            _internal_ASSIGNED_ORGANIZATION_ID = value;
        }
    }

    public function set ASSIGNED_TO_PERSON_ID(value:int) : void
    {
        var oldValue:int = _internal_ASSIGNED_TO_PERSON_ID;
        if (oldValue !== value)
        {
            _internal_ASSIGNED_TO_PERSON_ID = value;
        }
    }

    public function set ASSIGNED_BY_PERSON_ID(value:int) : void
    {
        var oldValue:int = _internal_ASSIGNED_BY_PERSON_ID;
        if (oldValue !== value)
        {
            _internal_ASSIGNED_BY_PERSON_ID = value;
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
    public function get _model() : _TaskEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TaskEntityMetadata) : void
    {
        var oldValue : _TaskEntityMetadata = model_internal::_dminternal_model;
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
