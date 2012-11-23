/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - PlayerDAO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.InvitationDAO;
import valueObjects.LeagueAdminDAO;
import valueObjects.LeagueSeasonDAO;
import valueObjects.LevelInterestDAO;
import valueObjects.PlayerAvailabilityDAO;
import valueObjects.TeamPlayerDAO;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_PlayerDAO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dao.PlayerDAO") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dao.PlayerDAO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dao.PlayerDAO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.InvitationDAO.initRemoteClassAliasSingleChild();
        valueObjects.PlayerDAO.initRemoteClassAliasSingleChild();
        valueObjects.SeasonEventDAO.initRemoteClassAliasSingleChild();
        valueObjects.LocationDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueSeasonDAO.initRemoteClassAliasSingleChild();
        valueObjects.TeamDAO.initRemoteClassAliasSingleChild();
        valueObjects.EventTeamDAO.initRemoteClassAliasSingleChild();
        valueObjects.TeamPlayerDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueDAO.initRemoteClassAliasSingleChild();
        valueObjects.OrganizationDAO.initRemoteClassAliasSingleChild();
        valueObjects.VolleyTypeDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueAdminDAO.initRemoteClassAliasSingleChild();
        valueObjects.EventMatchDAO.initRemoteClassAliasSingleChild();
        valueObjects.MatchSetDAO.initRemoteClassAliasSingleChild();
        valueObjects.LevelInterestDAO.initRemoteClassAliasSingleChild();
        valueObjects.PlayerAvailabilityDAO.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _PlayerDAOEntityMetadata;
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
    private var _internal_lastName : String;
    private var _internal_phone : String;
    private var _internal_sex : int;
    private var _internal_invitationsSent : ArrayCollection;
    model_internal var _internal_invitationsSent_leaf:valueObjects.InvitationDAO;
    private var _internal_levelInterestList : ArrayCollection;
    model_internal var _internal_levelInterestList_leaf:valueObjects.LevelInterestDAO;
    private var _internal_leagueSeasonInterest : ArrayCollection;
    model_internal var _internal_leagueSeasonInterest_leaf:valueObjects.LeagueSeasonDAO;
    private var _internal_password : String;
    private var _internal_invitationsReceived : ArrayCollection;
    model_internal var _internal_invitationsReceived_leaf:valueObjects.InvitationDAO;
    private var _internal_id : int;
    private var _internal_height : int;
    private var _internal_email : String;
    private var _internal_availabilityList : ArrayCollection;
    model_internal var _internal_availabilityList_leaf:valueObjects.PlayerAvailabilityDAO;
    private var _internal_zipCode : String;
    private var _internal_birthDate : Number;
    private var _internal_longitude : Number;
    private var _internal_latitude : Number;
    private var _internal_firstName : String;
    private var _internal_teamList : ArrayCollection;
    model_internal var _internal_teamList_leaf:valueObjects.TeamPlayerDAO;
    private var _internal_adminList : ArrayCollection;
    model_internal var _internal_adminList_leaf:valueObjects.LeagueAdminDAO;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_PlayerDAO()
    {
        _model = new _PlayerDAOEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get lastName() : String
    {
        return _internal_lastName;
    }

    [Bindable(event="propertyChange")]
    public function get phone() : String
    {
        return _internal_phone;
    }

    [Bindable(event="propertyChange")]
    public function get sex() : int
    {
        return _internal_sex;
    }

    [Bindable(event="propertyChange")]
    public function get invitationsSent() : ArrayCollection
    {
        return _internal_invitationsSent;
    }

    [Bindable(event="propertyChange")]
    public function get levelInterestList() : ArrayCollection
    {
        return _internal_levelInterestList;
    }

    [Bindable(event="propertyChange")]
    public function get leagueSeasonInterest() : ArrayCollection
    {
        return _internal_leagueSeasonInterest;
    }

    [Bindable(event="propertyChange")]
    public function get password() : String
    {
        return _internal_password;
    }

    [Bindable(event="propertyChange")]
    public function get invitationsReceived() : ArrayCollection
    {
        return _internal_invitationsReceived;
    }

    [Bindable(event="propertyChange")]
    public function get id() : int
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get height() : int
    {
        return _internal_height;
    }

    [Bindable(event="propertyChange")]
    public function get email() : String
    {
        return _internal_email;
    }

    [Bindable(event="propertyChange")]
    public function get availabilityList() : ArrayCollection
    {
        return _internal_availabilityList;
    }

    [Bindable(event="propertyChange")]
    public function get zipCode() : String
    {
        return _internal_zipCode;
    }

    [Bindable(event="propertyChange")]
    public function get birthDate() : Number
    {
        return _internal_birthDate;
    }

    [Bindable(event="propertyChange")]
    public function get longitude() : Number
    {
        return _internal_longitude;
    }

    [Bindable(event="propertyChange")]
    public function get latitude() : Number
    {
        return _internal_latitude;
    }

    [Bindable(event="propertyChange")]
    public function get firstName() : String
    {
        return _internal_firstName;
    }

    [Bindable(event="propertyChange")]
    public function get teamList() : ArrayCollection
    {
        return _internal_teamList;
    }

    [Bindable(event="propertyChange")]
    public function get adminList() : ArrayCollection
    {
        return _internal_adminList;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set lastName(value:String) : void
    {
        var oldValue:String = _internal_lastName;
        if (oldValue !== value)
        {
            _internal_lastName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lastName", oldValue, _internal_lastName));
        }
    }

    public function set phone(value:String) : void
    {
        var oldValue:String = _internal_phone;
        if (oldValue !== value)
        {
            _internal_phone = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "phone", oldValue, _internal_phone));
        }
    }

    public function set sex(value:int) : void
    {
        var oldValue:int = _internal_sex;
        if (oldValue !== value)
        {
            _internal_sex = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sex", oldValue, _internal_sex));
        }
    }

    public function set invitationsSent(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_invitationsSent;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_invitationsSent = value;
            }
            else if (value is Array)
            {
                _internal_invitationsSent = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_invitationsSent = null;
            }
            else
            {
                throw new Error("value of invitationsSent must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "invitationsSent", oldValue, _internal_invitationsSent));
        }
    }

    public function set levelInterestList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_levelInterestList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_levelInterestList = value;
            }
            else if (value is Array)
            {
                _internal_levelInterestList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_levelInterestList = null;
            }
            else
            {
                throw new Error("value of levelInterestList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "levelInterestList", oldValue, _internal_levelInterestList));
        }
    }

    public function set leagueSeasonInterest(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_leagueSeasonInterest;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_leagueSeasonInterest = value;
            }
            else if (value is Array)
            {
                _internal_leagueSeasonInterest = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_leagueSeasonInterest = null;
            }
            else
            {
                throw new Error("value of leagueSeasonInterest must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "leagueSeasonInterest", oldValue, _internal_leagueSeasonInterest));
        }
    }

    public function set password(value:String) : void
    {
        var oldValue:String = _internal_password;
        if (oldValue !== value)
        {
            _internal_password = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "password", oldValue, _internal_password));
        }
    }

    public function set invitationsReceived(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_invitationsReceived;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_invitationsReceived = value;
            }
            else if (value is Array)
            {
                _internal_invitationsReceived = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_invitationsReceived = null;
            }
            else
            {
                throw new Error("value of invitationsReceived must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "invitationsReceived", oldValue, _internal_invitationsReceived));
        }
    }

    public function set id(value:int) : void
    {
        var oldValue:int = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set height(value:int) : void
    {
        var oldValue:int = _internal_height;
        if (oldValue !== value)
        {
            _internal_height = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "height", oldValue, _internal_height));
        }
    }

    public function set email(value:String) : void
    {
        var oldValue:String = _internal_email;
        if (oldValue !== value)
        {
            _internal_email = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "email", oldValue, _internal_email));
        }
    }

    public function set availabilityList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_availabilityList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_availabilityList = value;
            }
            else if (value is Array)
            {
                _internal_availabilityList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_availabilityList = null;
            }
            else
            {
                throw new Error("value of availabilityList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "availabilityList", oldValue, _internal_availabilityList));
        }
    }

    public function set zipCode(value:String) : void
    {
        var oldValue:String = _internal_zipCode;
        if (oldValue !== value)
        {
            _internal_zipCode = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zipCode", oldValue, _internal_zipCode));
        }
    }

    public function set birthDate(value:Number) : void
    {
        var oldValue:Number = _internal_birthDate;
        if (oldValue !== value)
        {
            _internal_birthDate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "birthDate", oldValue, _internal_birthDate));
        }
    }

    public function set longitude(value:Number) : void
    {
        var oldValue:Number = _internal_longitude;
        if (isNaN(_internal_longitude) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_longitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitude", oldValue, _internal_longitude));
        }
    }

    public function set latitude(value:Number) : void
    {
        var oldValue:Number = _internal_latitude;
        if (isNaN(_internal_latitude) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_latitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latitude", oldValue, _internal_latitude));
        }
    }

    public function set firstName(value:String) : void
    {
        var oldValue:String = _internal_firstName;
        if (oldValue !== value)
        {
            _internal_firstName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "firstName", oldValue, _internal_firstName));
        }
    }

    public function set teamList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_teamList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_teamList = value;
            }
            else if (value is Array)
            {
                _internal_teamList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_teamList = null;
            }
            else
            {
                throw new Error("value of teamList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "teamList", oldValue, _internal_teamList));
        }
    }

    public function set adminList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_adminList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_adminList = value;
            }
            else if (value is Array)
            {
                _internal_adminList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_adminList = null;
            }
            else
            {
                throw new Error("value of adminList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adminList", oldValue, _internal_adminList));
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
    public function get _model() : _PlayerDAOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PlayerDAOEntityMetadata) : void
    {
        var oldValue : _PlayerDAOEntityMetadata = model_internal::_dminternal_model;
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
