
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
internal class _CustomDatatype1EntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("LAST_NM", "FIRST_NM");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("LAST_NM", "FIRST_NM");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("LAST_NM", "FIRST_NM");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("LAST_NM", "FIRST_NM");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("LAST_NM", "FIRST_NM");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CustomDatatype1";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _LAST_NMIsValid:Boolean;
    model_internal var _LAST_NMValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _LAST_NMIsValidCacheInitialized:Boolean = false;
    model_internal var _LAST_NMValidationFailureMessages:Array;
    
    model_internal var _FIRST_NMIsValid:Boolean;
    model_internal var _FIRST_NMValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _FIRST_NMIsValidCacheInitialized:Boolean = false;
    model_internal var _FIRST_NMValidationFailureMessages:Array;

    model_internal var _instance:_Super_CustomDatatype1;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CustomDatatype1EntityMetadata(value : _Super_CustomDatatype1)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["LAST_NM"] = new Array();
            model_internal::dependentsOnMap["FIRST_NM"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["LAST_NM"] = "String";
        model_internal::propertyTypeMap["FIRST_NM"] = "String";

        model_internal::_instance = value;
        model_internal::_LAST_NMValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLAST_NM);
        model_internal::_LAST_NMValidator.required = true;
        model_internal::_LAST_NMValidator.requiredFieldError = "LAST_NM is required";
        //model_internal::_LAST_NMValidator.source = model_internal::_instance;
        //model_internal::_LAST_NMValidator.property = "LAST_NM";
        model_internal::_FIRST_NMValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFIRST_NM);
        model_internal::_FIRST_NMValidator.required = true;
        model_internal::_FIRST_NMValidator.requiredFieldError = "FIRST_NM is required";
        //model_internal::_FIRST_NMValidator.source = model_internal::_instance;
        //model_internal::_FIRST_NMValidator.property = "FIRST_NM";
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
            throw new Error(propertyName + " is not a data property of entity CustomDatatype1");
            
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
            throw new Error(propertyName + " is not a collection property of entity CustomDatatype1");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of CustomDatatype1");

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
            throw new Error(propertyName + " does not exist for entity CustomDatatype1");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity CustomDatatype1");
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
            throw new Error(propertyName + " does not exist for entity CustomDatatype1");
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
    public function get isLAST_NMAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFIRST_NMAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnLAST_NM():void
    {
        if (model_internal::_LAST_NMIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLAST_NM = null;
            model_internal::calculateLAST_NMIsValid();
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

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get LAST_NMStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get LAST_NMValidator() : StyleValidator
    {
        return model_internal::_LAST_NMValidator;
    }

    model_internal function set _LAST_NMIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_LAST_NMIsValid;         
        if (oldValue !== value)
        {
            model_internal::_LAST_NMIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LAST_NMIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get LAST_NMIsValid():Boolean
    {
        if (!model_internal::_LAST_NMIsValidCacheInitialized)
        {
            model_internal::calculateLAST_NMIsValid();
        }

        return model_internal::_LAST_NMIsValid;
    }

    model_internal function calculateLAST_NMIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_LAST_NMValidator.validate(model_internal::_instance.LAST_NM)
        model_internal::_LAST_NMIsValid_der = (valRes.results == null);
        model_internal::_LAST_NMIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::LAST_NMValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::LAST_NMValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get LAST_NMValidationFailureMessages():Array
    {
        if (model_internal::_LAST_NMValidationFailureMessages == null)
            model_internal::calculateLAST_NMIsValid();

        return _LAST_NMValidationFailureMessages;
    }

    model_internal function set LAST_NMValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_LAST_NMValidationFailureMessages;

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
            model_internal::_LAST_NMValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LAST_NMValidationFailureMessages", oldValue, value));
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
            case("LAST_NM"):
            {
                return LAST_NMValidationFailureMessages;
            }
            case("FIRST_NM"):
            {
                return FIRST_NMValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
