
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.collections.ArrayCollection;
import valueObjects.InvitationDAO;
import valueObjects.LeagueAdminDAO;
import valueObjects.LeagueSeasonDAO;
import valueObjects.LevelInterestDAO;
import valueObjects.PlayerAvailabilityDAO;
import valueObjects.TeamPlayerDAO;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _PlayerDAOEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("lastName", "phone", "sex", "invitationsSent", "levelInterestList", "leagueSeasonInterest", "password", "invitationsReceived", "id", "height", "availabilityList", "email", "zipCode", "longitude", "birthDate", "latitude", "firstName", "teamList", "adminList");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("lastName", "phone", "sex", "invitationsSent", "levelInterestList", "leagueSeasonInterest", "password", "invitationsReceived", "id", "height", "availabilityList", "email", "zipCode", "longitude", "birthDate", "latitude", "firstName", "teamList", "adminList");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("lastName", "phone", "sex", "invitationsSent", "levelInterestList", "leagueSeasonInterest", "password", "invitationsReceived", "id", "height", "availabilityList", "email", "zipCode", "longitude", "birthDate", "latitude", "firstName", "teamList", "adminList");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("lastName", "phone", "sex", "invitationsSent", "levelInterestList", "leagueSeasonInterest", "password", "invitationsReceived", "id", "height", "availabilityList", "email", "zipCode", "longitude", "birthDate", "latitude", "firstName", "teamList", "adminList");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("invitationsSent", "levelInterestList", "leagueSeasonInterest", "invitationsReceived", "availabilityList", "teamList", "adminList");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "PlayerDAO";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_PlayerDAO;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _PlayerDAOEntityMetadata(value : _Super_PlayerDAO)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["lastName"] = new Array();
            model_internal::dependentsOnMap["phone"] = new Array();
            model_internal::dependentsOnMap["sex"] = new Array();
            model_internal::dependentsOnMap["invitationsSent"] = new Array();
            model_internal::dependentsOnMap["levelInterestList"] = new Array();
            model_internal::dependentsOnMap["leagueSeasonInterest"] = new Array();
            model_internal::dependentsOnMap["password"] = new Array();
            model_internal::dependentsOnMap["invitationsReceived"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["height"] = new Array();
            model_internal::dependentsOnMap["availabilityList"] = new Array();
            model_internal::dependentsOnMap["email"] = new Array();
            model_internal::dependentsOnMap["zipCode"] = new Array();
            model_internal::dependentsOnMap["longitude"] = new Array();
            model_internal::dependentsOnMap["birthDate"] = new Array();
            model_internal::dependentsOnMap["latitude"] = new Array();
            model_internal::dependentsOnMap["firstName"] = new Array();
            model_internal::dependentsOnMap["teamList"] = new Array();
            model_internal::dependentsOnMap["adminList"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["invitationsSent"] = "valueObjects.InvitationDAO";
            model_internal::collectionBaseMap["levelInterestList"] = "valueObjects.LevelInterestDAO";
            model_internal::collectionBaseMap["leagueSeasonInterest"] = "valueObjects.LeagueSeasonDAO";
            model_internal::collectionBaseMap["invitationsReceived"] = "valueObjects.InvitationDAO";
            model_internal::collectionBaseMap["availabilityList"] = "valueObjects.PlayerAvailabilityDAO";
            model_internal::collectionBaseMap["teamList"] = "valueObjects.TeamPlayerDAO";
            model_internal::collectionBaseMap["adminList"] = "valueObjects.LeagueAdminDAO";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["lastName"] = "String";
        model_internal::propertyTypeMap["phone"] = "String";
        model_internal::propertyTypeMap["sex"] = "int";
        model_internal::propertyTypeMap["invitationsSent"] = "ArrayCollection";
        model_internal::propertyTypeMap["levelInterestList"] = "ArrayCollection";
        model_internal::propertyTypeMap["leagueSeasonInterest"] = "ArrayCollection";
        model_internal::propertyTypeMap["password"] = "String";
        model_internal::propertyTypeMap["invitationsReceived"] = "ArrayCollection";
        model_internal::propertyTypeMap["id"] = "int";
        model_internal::propertyTypeMap["height"] = "int";
        model_internal::propertyTypeMap["availabilityList"] = "ArrayCollection";
        model_internal::propertyTypeMap["email"] = "String";
        model_internal::propertyTypeMap["zipCode"] = "String";
        model_internal::propertyTypeMap["longitude"] = "Number";
        model_internal::propertyTypeMap["birthDate"] = "Number";
        model_internal::propertyTypeMap["latitude"] = "Number";
        model_internal::propertyTypeMap["firstName"] = "String";
        model_internal::propertyTypeMap["teamList"] = "ArrayCollection";
        model_internal::propertyTypeMap["adminList"] = "ArrayCollection";

        model_internal::_instance = value;
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
            throw new Error(propertyName + " is not a data property of entity PlayerDAO");
            
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
            throw new Error(propertyName + " is not a collection property of entity PlayerDAO");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of PlayerDAO");

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
            throw new Error(propertyName + " does not exist for entity PlayerDAO");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity PlayerDAO");
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
            throw new Error(propertyName + " does not exist for entity PlayerDAO");
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
    public function get isLastNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPhoneAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSexAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInvitationsSentAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLevelInterestListAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLeagueSeasonInterestAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPasswordAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInvitationsReceivedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHeightAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAvailabilityListAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEmailAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isZipCodeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLongitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBirthDateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLatitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFirstNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTeamListAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAdminListAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get lastNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get phoneStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get sexStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get invitationsSentStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get levelInterestListStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get leagueSeasonInterestStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get passwordStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get invitationsReceivedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get heightStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get availabilityListStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get emailStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get zipCodeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get longitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get birthDateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get latitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get firstNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get teamListStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get adminListStyle():com.adobe.fiber.styles.Style
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
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
