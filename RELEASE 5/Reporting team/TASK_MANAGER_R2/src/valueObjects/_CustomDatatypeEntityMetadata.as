
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _CustomDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("PARENT_TASK_ID", "ORGANIZATION_NM", "DEADLINE_DT", "FIRST_NM", "SHORT_TITLE_TX", "SHORT_DESCRIPTION_TX", "TASK_ID", "ESTIMATED_COMPLETION_DT", "LONG_DESCRIPTION_TX", "PRIORITY_NR");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("PARENT_TASK_ID", "ORGANIZATION_NM", "DEADLINE_DT", "FIRST_NM", "SHORT_TITLE_TX", "SHORT_DESCRIPTION_TX", "TASK_ID", "ESTIMATED_COMPLETION_DT", "LONG_DESCRIPTION_TX", "PRIORITY_NR");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("PARENT_TASK_ID", "ORGANIZATION_NM", "DEADLINE_DT", "FIRST_NM", "SHORT_TITLE_TX", "SHORT_DESCRIPTION_TX", "TASK_ID", "ESTIMATED_COMPLETION_DT", "LONG_DESCRIPTION_TX", "PRIORITY_NR");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("PARENT_TASK_ID", "ORGANIZATION_NM", "DEADLINE_DT", "FIRST_NM", "SHORT_TITLE_TX", "SHORT_DESCRIPTION_TX", "TASK_ID", "ESTIMATED_COMPLETION_DT", "LONG_DESCRIPTION_TX", "PRIORITY_NR");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("PARENT_TASK_ID", "ORGANIZATION_NM", "DEADLINE_DT", "FIRST_NM", "SHORT_TITLE_TX", "SHORT_DESCRIPTION_TX", "TASK_ID", "ESTIMATED_COMPLETION_DT", "LONG_DESCRIPTION_TX", "PRIORITY_NR");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CustomDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _PARENT_TASK_IDIsValid:Boolean;
    model_internal var _PARENT_TASK_IDValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _PARENT_TASK_IDIsValidCacheInitialized:Boolean = false;
    model_internal var _PARENT_TASK_IDValidationFailureMessages:Array;
    
    model_internal var _ORGANIZATION_NMIsValid:Boolean;
    model_internal var _ORGANIZATION_NMValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ORGANIZATION_NMIsValidCacheInitialized:Boolean = false;
    model_internal var _ORGANIZATION_NMValidationFailureMessages:Array;
    
    model_internal var _DEADLINE_DTIsValid:Boolean;
    model_internal var _DEADLINE_DTValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _DEADLINE_DTIsValidCacheInitialized:Boolean = false;
    model_internal var _DEADLINE_DTValidationFailureMessages:Array;
    
    model_internal var _FIRST_NMIsValid:Boolean;
    model_internal var _FIRST_NMValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _FIRST_NMIsValidCacheInitialized:Boolean = false;
    model_internal var _FIRST_NMValidationFailureMessages:Array;
    
    model_internal var _SHORT_TITLE_TXIsValid:Boolean;
    model_internal var _SHORT_TITLE_TXValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _SHORT_TITLE_TXIsValidCacheInitialized:Boolean = false;
    model_internal var _SHORT_TITLE_TXValidationFailureMessages:Array;
    
    model_internal var _SHORT_DESCRIPTION_TXIsValid:Boolean;
    model_internal var _SHORT_DESCRIPTION_TXValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _SHORT_DESCRIPTION_TXIsValidCacheInitialized:Boolean = false;
    model_internal var _SHORT_DESCRIPTION_TXValidationFailureMessages:Array;
    
    model_internal var _ESTIMATED_COMPLETION_DTIsValid:Boolean;
    model_internal var _ESTIMATED_COMPLETION_DTValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ESTIMATED_COMPLETION_DTIsValidCacheInitialized:Boolean = false;
    model_internal var _ESTIMATED_COMPLETION_DTValidationFailureMessages:Array;
    
    model_internal var _LONG_DESCRIPTION_TXIsValid:Boolean;
    model_internal var _LONG_DESCRIPTION_TXValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _LONG_DESCRIPTION_TXIsValidCacheInitialized:Boolean = false;
    model_internal var _LONG_DESCRIPTION_TXValidationFailureMessages:Array;

    model_internal var _instance:_Super_CustomDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CustomDatatypeEntityMetadata(value : _Super_CustomDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["PARENT_TASK_ID"] = new Array();
            model_internal::dependentsOnMap["ORGANIZATION_NM"] = new Array();
            model_internal::dependentsOnMap["DEADLINE_DT"] = new Array();
            model_internal::dependentsOnMap["FIRST_NM"] = new Array();
            model_internal::dependentsOnMap["SHORT_TITLE_TX"] = new Array();
            model_internal::dependentsOnMap["SHORT_DESCRIPTION_TX"] = new Array();
            model_internal::dependentsOnMap["TASK_ID"] = new Array();
            model_internal::dependentsOnMap["ESTIMATED_COMPLETION_DT"] = new Array();
            model_internal::dependentsOnMap["LONG_DESCRIPTION_TX"] = new Array();
            model_internal::dependentsOnMap["PRIORITY_NR"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["PARENT_TASK_ID"] = "Object";
        model_internal::propertyTypeMap["ORGANIZATION_NM"] = "String";
        model_internal::propertyTypeMap["DEADLINE_DT"] = "String";
        model_internal::propertyTypeMap["FIRST_NM"] = "String";
        model_internal::propertyTypeMap["SHORT_TITLE_TX"] = "String";
        model_internal::propertyTypeMap["SHORT_DESCRIPTION_TX"] = "String";
        model_internal::propertyTypeMap["TASK_ID"] = "int";
        model_internal::propertyTypeMap["ESTIMATED_COMPLETION_DT"] = "String";
        model_internal::propertyTypeMap["LONG_DESCRIPTION_TX"] = "String";
        model_internal::propertyTypeMap["PRIORITY_NR"] = "int";

        model_internal::_instance = value;
        model_internal::_PARENT_TASK_IDValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPARENT_TASK_ID);
        model_internal::_PARENT_TASK_IDValidator.required = true;
        model_internal::_PARENT_TASK_IDValidator.requiredFieldError = "PARENT_TASK_ID is required";
        //model_internal::_PARENT_TASK_IDValidator.source = model_internal::_instance;
        //model_internal::_PARENT_TASK_IDValidator.property = "PARENT_TASK_ID";
        model_internal::_ORGANIZATION_NMValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForORGANIZATION_NM);
        model_internal::_ORGANIZATION_NMValidator.required = true;
        model_internal::_ORGANIZATION_NMValidator.requiredFieldError = "ORGANIZATION_NM is required";
        //model_internal::_ORGANIZATION_NMValidator.source = model_internal::_instance;
        //model_internal::_ORGANIZATION_NMValidator.property = "ORGANIZATION_NM";
        model_internal::_DEADLINE_DTValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDEADLINE_DT);
        model_internal::_DEADLINE_DTValidator.required = true;
        model_internal::_DEADLINE_DTValidator.requiredFieldError = "DEADLINE_DT is required";
        //model_internal::_DEADLINE_DTValidator.source = model_internal::_instance;
        //model_internal::_DEADLINE_DTValidator.property = "DEADLINE_DT";
        model_internal::_FIRST_NMValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFIRST_NM);
        model_internal::_FIRST_NMValidator.required = true;
        model_internal::_FIRST_NMValidator.requiredFieldError = "FIRST_NM is required";
        //model_internal::_FIRST_NMValidator.source = model_internal::_instance;
        //model_internal::_FIRST_NMValidator.property = "FIRST_NM";
        model_internal::_SHORT_TITLE_TXValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSHORT_TITLE_TX);
        model_internal::_SHORT_TITLE_TXValidator.required = true;
        model_internal::_SHORT_TITLE_TXValidator.requiredFieldError = "SHORT_TITLE_TX is required";
        //model_internal::_SHORT_TITLE_TXValidator.source = model_internal::_instance;
        //model_internal::_SHORT_TITLE_TXValidator.property = "SHORT_TITLE_TX";
        model_internal::_SHORT_DESCRIPTION_TXValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSHORT_DESCRIPTION_TX);
        model_internal::_SHORT_DESCRIPTION_TXValidator.required = true;
        model_internal::_SHORT_DESCRIPTION_TXValidator.requiredFieldError = "SHORT_DESCRIPTION_TX is required";
        //model_internal::_SHORT_DESCRIPTION_TXValidator.source = model_internal::_instance;
        //model_internal::_SHORT_DESCRIPTION_TXValidator.property = "SHORT_DESCRIPTION_TX";
        model_internal::_ESTIMATED_COMPLETION_DTValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForESTIMATED_COMPLETION_DT);
        model_internal::_ESTIMATED_COMPLETION_DTValidator.required = true;
        model_internal::_ESTIMATED_COMPLETION_DTValidator.requiredFieldError = "ESTIMATED_COMPLETION_DT is required";
        //model_internal::_ESTIMATED_COMPLETION_DTValidator.source = model_internal::_instance;
        //model_internal::_ESTIMATED_COMPLETION_DTValidator.property = "ESTIMATED_COMPLETION_DT";
        model_internal::_LONG_DESCRIPTION_TXValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLONG_DESCRIPTION_TX);
        model_internal::_LONG_DESCRIPTION_TXValidator.required = true;
        model_internal::_LONG_DESCRIPTION_TXValidator.requiredFieldError = "LONG_DESCRIPTION_TX is required";
        //model_internal::_LONG_DESCRIPTION_TXValidator.source = model_internal::_instance;
        //model_internal::_LONG_DESCRIPTION_TXValidator.property = "LONG_DESCRIPTION_TX";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity CustomDatatype");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity CustomDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of CustomDatatype");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity CustomDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity CustomDatatype");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity CustomDatatype");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isPARENT_TASK_IDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isORGANIZATION_NMAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDEADLINE_DTAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFIRST_NMAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSHORT_TITLE_TXAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSHORT_DESCRIPTION_TXAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTASK_IDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isESTIMATED_COMPLETION_DTAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLONG_DESCRIPTION_TXAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPRIORITY_NRAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnPARENT_TASK_ID():void
    {
        if (model_internal::_PARENT_TASK_IDIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPARENT_TASK_ID = null;
            model_internal::calculatePARENT_TASK_IDIsValid();
        }
    }
    public function invalidateDependentOnORGANIZATION_NM():void
    {
        if (model_internal::_ORGANIZATION_NMIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfORGANIZATION_NM = null;
            model_internal::calculateORGANIZATION_NMIsValid();
        }
    }
    public function invalidateDependentOnDEADLINE_DT():void
    {
        if (model_internal::_DEADLINE_DTIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDEADLINE_DT = null;
            model_internal::calculateDEADLINE_DTIsValid();
        }
    }
    public function invalidateDependentOnFIRST_NM():void
    {
        if (model_internal::_FIRST_NMIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFIRST_NM = null;
            model_internal::calculateFIRST_NMIsValid();
        }
    }
    public function invalidateDependentOnSHORT_TITLE_TX():void
    {
        if (model_internal::_SHORT_TITLE_TXIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSHORT_TITLE_TX = null;
            model_internal::calculateSHORT_TITLE_TXIsValid();
        }
    }
    public function invalidateDependentOnSHORT_DESCRIPTION_TX():void
    {
        if (model_internal::_SHORT_DESCRIPTION_TXIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSHORT_DESCRIPTION_TX = null;
            model_internal::calculateSHORT_DESCRIPTION_TXIsValid();
        }
    }
    public function invalidateDependentOnESTIMATED_COMPLETION_DT():void
    {
        if (model_internal::_ESTIMATED_COMPLETION_DTIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfESTIMATED_COMPLETION_DT = null;
            model_internal::calculateESTIMATED_COMPLETION_DTIsValid();
        }
    }
    public function invalidateDependentOnLONG_DESCRIPTION_TX():void
    {
        if (model_internal::_LONG_DESCRIPTION_TXIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLONG_DESCRIPTION_TX = null;
            model_internal::calculateLONG_DESCRIPTION_TXIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get PARENT_TASK_IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get PARENT_TASK_IDValidator() : StyleValidator
    {
        return model_internal::_PARENT_TASK_IDValidator;
    }

    model_internal function set _PARENT_TASK_IDIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_PARENT_TASK_IDIsValid;         
        if (oldValue !== value)
        {
            model_internal::_PARENT_TASK_IDIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PARENT_TASK_IDIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get PARENT_TASK_IDIsValid():Boolean
    {
        if (!model_internal::_PARENT_TASK_IDIsValidCacheInitialized)
        {
            model_internal::calculatePARENT_TASK_IDIsValid();
        }

        return model_internal::_PARENT_TASK_IDIsValid;
    }

    model_internal function calculatePARENT_TASK_IDIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_PARENT_TASK_IDValidator.validate(model_internal::_instance.PARENT_TASK_ID)
        model_internal::_PARENT_TASK_IDIsValid_der = (valRes.results == null);
        model_internal::_PARENT_TASK_IDIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::PARENT_TASK_IDValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::PARENT_TASK_IDValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get PARENT_TASK_IDValidationFailureMessages():Array
    {
        if (model_internal::_PARENT_TASK_IDValidationFailureMessages == null)
            model_internal::calculatePARENT_TASK_IDIsValid();

        return _PARENT_TASK_IDValidationFailureMessages;
    }

    model_internal function set PARENT_TASK_IDValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_PARENT_TASK_IDValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_PARENT_TASK_IDValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PARENT_TASK_IDValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ORGANIZATION_NMStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ORGANIZATION_NMValidator() : StyleValidator
    {
        return model_internal::_ORGANIZATION_NMValidator;
    }

    model_internal function set _ORGANIZATION_NMIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ORGANIZATION_NMIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ORGANIZATION_NMIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ORGANIZATION_NMIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ORGANIZATION_NMIsValid():Boolean
    {
        if (!model_internal::_ORGANIZATION_NMIsValidCacheInitialized)
        {
            model_internal::calculateORGANIZATION_NMIsValid();
        }

        return model_internal::_ORGANIZATION_NMIsValid;
    }

    model_internal function calculateORGANIZATION_NMIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ORGANIZATION_NMValidator.validate(model_internal::_instance.ORGANIZATION_NM)
        model_internal::_ORGANIZATION_NMIsValid_der = (valRes.results == null);
        model_internal::_ORGANIZATION_NMIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ORGANIZATION_NMValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ORGANIZATION_NMValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ORGANIZATION_NMValidationFailureMessages():Array
    {
        if (model_internal::_ORGANIZATION_NMValidationFailureMessages == null)
            model_internal::calculateORGANIZATION_NMIsValid();

        return _ORGANIZATION_NMValidationFailureMessages;
    }

    model_internal function set ORGANIZATION_NMValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ORGANIZATION_NMValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_ORGANIZATION_NMValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ORGANIZATION_NMValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get DEADLINE_DTStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get DEADLINE_DTValidator() : StyleValidator
    {
        return model_internal::_DEADLINE_DTValidator;
    }

    model_internal function set _DEADLINE_DTIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_DEADLINE_DTIsValid;         
        if (oldValue !== value)
        {
            model_internal::_DEADLINE_DTIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DEADLINE_DTIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get DEADLINE_DTIsValid():Boolean
    {
        if (!model_internal::_DEADLINE_DTIsValidCacheInitialized)
        {
            model_internal::calculateDEADLINE_DTIsValid();
        }

        return model_internal::_DEADLINE_DTIsValid;
    }

    model_internal function calculateDEADLINE_DTIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_DEADLINE_DTValidator.validate(model_internal::_instance.DEADLINE_DT)
        model_internal::_DEADLINE_DTIsValid_der = (valRes.results == null);
        model_internal::_DEADLINE_DTIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::DEADLINE_DTValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::DEADLINE_DTValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get DEADLINE_DTValidationFailureMessages():Array
    {
        if (model_internal::_DEADLINE_DTValidationFailureMessages == null)
            model_internal::calculateDEADLINE_DTIsValid();

        return _DEADLINE_DTValidationFailureMessages;
    }

    model_internal function set DEADLINE_DTValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_DEADLINE_DTValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_DEADLINE_DTValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DEADLINE_DTValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get FIRST_NMStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get FIRST_NMValidator() : StyleValidator
    {
        return model_internal::_FIRST_NMValidator;
    }

    model_internal function set _FIRST_NMIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_FIRST_NMIsValid;         
        if (oldValue !== value)
        {
            model_internal::_FIRST_NMIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "FIRST_NMIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get FIRST_NMIsValid():Boolean
    {
        if (!model_internal::_FIRST_NMIsValidCacheInitialized)
        {
            model_internal::calculateFIRST_NMIsValid();
        }

        return model_internal::_FIRST_NMIsValid;
    }

    model_internal function calculateFIRST_NMIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_FIRST_NMValidator.validate(model_internal::_instance.FIRST_NM)
        model_internal::_FIRST_NMIsValid_der = (valRes.results == null);
        model_internal::_FIRST_NMIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::FIRST_NMValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::FIRST_NMValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get FIRST_NMValidationFailureMessages():Array
    {
        if (model_internal::_FIRST_NMValidationFailureMessages == null)
            model_internal::calculateFIRST_NMIsValid();

        return _FIRST_NMValidationFailureMessages;
    }

    model_internal function set FIRST_NMValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_FIRST_NMValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_FIRST_NMValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "FIRST_NMValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get SHORT_TITLE_TXStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get SHORT_TITLE_TXValidator() : StyleValidator
    {
        return model_internal::_SHORT_TITLE_TXValidator;
    }

    model_internal function set _SHORT_TITLE_TXIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_SHORT_TITLE_TXIsValid;         
        if (oldValue !== value)
        {
            model_internal::_SHORT_TITLE_TXIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "SHORT_TITLE_TXIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get SHORT_TITLE_TXIsValid():Boolean
    {
        if (!model_internal::_SHORT_TITLE_TXIsValidCacheInitialized)
        {
            model_internal::calculateSHORT_TITLE_TXIsValid();
        }

        return model_internal::_SHORT_TITLE_TXIsValid;
    }

    model_internal function calculateSHORT_TITLE_TXIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_SHORT_TITLE_TXValidator.validate(model_internal::_instance.SHORT_TITLE_TX)
        model_internal::_SHORT_TITLE_TXIsValid_der = (valRes.results == null);
        model_internal::_SHORT_TITLE_TXIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::SHORT_TITLE_TXValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::SHORT_TITLE_TXValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get SHORT_TITLE_TXValidationFailureMessages():Array
    {
        if (model_internal::_SHORT_TITLE_TXValidationFailureMessages == null)
            model_internal::calculateSHORT_TITLE_TXIsValid();

        return _SHORT_TITLE_TXValidationFailureMessages;
    }

    model_internal function set SHORT_TITLE_TXValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_SHORT_TITLE_TXValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_SHORT_TITLE_TXValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "SHORT_TITLE_TXValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get SHORT_DESCRIPTION_TXStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get SHORT_DESCRIPTION_TXValidator() : StyleValidator
    {
        return model_internal::_SHORT_DESCRIPTION_TXValidator;
    }

    model_internal function set _SHORT_DESCRIPTION_TXIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_SHORT_DESCRIPTION_TXIsValid;         
        if (oldValue !== value)
        {
            model_internal::_SHORT_DESCRIPTION_TXIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "SHORT_DESCRIPTION_TXIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get SHORT_DESCRIPTION_TXIsValid():Boolean
    {
        if (!model_internal::_SHORT_DESCRIPTION_TXIsValidCacheInitialized)
        {
            model_internal::calculateSHORT_DESCRIPTION_TXIsValid();
        }

        return model_internal::_SHORT_DESCRIPTION_TXIsValid;
    }

    model_internal function calculateSHORT_DESCRIPTION_TXIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_SHORT_DESCRIPTION_TXValidator.validate(model_internal::_instance.SHORT_DESCRIPTION_TX)
        model_internal::_SHORT_DESCRIPTION_TXIsValid_der = (valRes.results == null);
        model_internal::_SHORT_DESCRIPTION_TXIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::SHORT_DESCRIPTION_TXValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::SHORT_DESCRIPTION_TXValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get SHORT_DESCRIPTION_TXValidationFailureMessages():Array
    {
        if (model_internal::_SHORT_DESCRIPTION_TXValidationFailureMessages == null)
            model_internal::calculateSHORT_DESCRIPTION_TXIsValid();

        return _SHORT_DESCRIPTION_TXValidationFailureMessages;
    }

    model_internal function set SHORT_DESCRIPTION_TXValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_SHORT_DESCRIPTION_TXValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_SHORT_DESCRIPTION_TXValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "SHORT_DESCRIPTION_TXValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get TASK_IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ESTIMATED_COMPLETION_DTStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ESTIMATED_COMPLETION_DTValidator() : StyleValidator
    {
        return model_internal::_ESTIMATED_COMPLETION_DTValidator;
    }

    model_internal function set _ESTIMATED_COMPLETION_DTIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ESTIMATED_COMPLETION_DTIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ESTIMATED_COMPLETION_DTIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ESTIMATED_COMPLETION_DTIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ESTIMATED_COMPLETION_DTIsValid():Boolean
    {
        if (!model_internal::_ESTIMATED_COMPLETION_DTIsValidCacheInitialized)
        {
            model_internal::calculateESTIMATED_COMPLETION_DTIsValid();
        }

        return model_internal::_ESTIMATED_COMPLETION_DTIsValid;
    }

    model_internal function calculateESTIMATED_COMPLETION_DTIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ESTIMATED_COMPLETION_DTValidator.validate(model_internal::_instance.ESTIMATED_COMPLETION_DT)
        model_internal::_ESTIMATED_COMPLETION_DTIsValid_der = (valRes.results == null);
        model_internal::_ESTIMATED_COMPLETION_DTIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ESTIMATED_COMPLETION_DTValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ESTIMATED_COMPLETION_DTValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ESTIMATED_COMPLETION_DTValidationFailureMessages():Array
    {
        if (model_internal::_ESTIMATED_COMPLETION_DTValidationFailureMessages == null)
            model_internal::calculateESTIMATED_COMPLETION_DTIsValid();

        return _ESTIMATED_COMPLETION_DTValidationFailureMessages;
    }

    model_internal function set ESTIMATED_COMPLETION_DTValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ESTIMATED_COMPLETION_DTValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_ESTIMATED_COMPLETION_DTValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ESTIMATED_COMPLETION_DTValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get LONG_DESCRIPTION_TXStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get LONG_DESCRIPTION_TXValidator() : StyleValidator
    {
        return model_internal::_LONG_DESCRIPTION_TXValidator;
    }

    model_internal function set _LONG_DESCRIPTION_TXIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_LONG_DESCRIPTION_TXIsValid;         
        if (oldValue !== value)
        {
            model_internal::_LONG_DESCRIPTION_TXIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LONG_DESCRIPTION_TXIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get LONG_DESCRIPTION_TXIsValid():Boolean
    {
        if (!model_internal::_LONG_DESCRIPTION_TXIsValidCacheInitialized)
        {
            model_internal::calculateLONG_DESCRIPTION_TXIsValid();
        }

        return model_internal::_LONG_DESCRIPTION_TXIsValid;
    }

    model_internal function calculateLONG_DESCRIPTION_TXIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_LONG_DESCRIPTION_TXValidator.validate(model_internal::_instance.LONG_DESCRIPTION_TX)
        model_internal::_LONG_DESCRIPTION_TXIsValid_der = (valRes.results == null);
        model_internal::_LONG_DESCRIPTION_TXIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::LONG_DESCRIPTION_TXValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::LONG_DESCRIPTION_TXValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get LONG_DESCRIPTION_TXValidationFailureMessages():Array
    {
        if (model_internal::_LONG_DESCRIPTION_TXValidationFailureMessages == null)
            model_internal::calculateLONG_DESCRIPTION_TXIsValid();

        return _LONG_DESCRIPTION_TXValidationFailureMessages;
    }

    model_internal function set LONG_DESCRIPTION_TXValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_LONG_DESCRIPTION_TXValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_LONG_DESCRIPTION_TXValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LONG_DESCRIPTION_TXValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get PRIORITY_NRStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("PARENT_TASK_ID"):
            {
                return PARENT_TASK_IDValidationFailureMessages;
            }
            case("ORGANIZATION_NM"):
            {
                return ORGANIZATION_NMValidationFailureMessages;
            }
            case("DEADLINE_DT"):
            {
                return DEADLINE_DTValidationFailureMessages;
            }
            case("FIRST_NM"):
            {
                return FIRST_NMValidationFailureMessages;
            }
            case("SHORT_TITLE_TX"):
            {
                return SHORT_TITLE_TXValidationFailureMessages;
            }
            case("SHORT_DESCRIPTION_TX"):
            {
                return SHORT_DESCRIPTION_TXValidationFailureMessages;
            }
            case("ESTIMATED_COMPLETION_DT"):
            {
                return ESTIMATED_COMPLETION_DTValidationFailureMessages;
            }
            case("LONG_DESCRIPTION_TX"):
            {
                return LONG_DESCRIPTION_TXValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
