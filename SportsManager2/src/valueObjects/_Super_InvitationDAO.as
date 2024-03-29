/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - InvitationDAO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.PlayerDAO;
import valueObjects.SeasonEventDAO;
import valueObjects.TeamDAO;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_InvitationDAO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dao.InvitationDAO") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dao.InvitationDAO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dao.InvitationDAO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.PlayerDAO.initRemoteClassAliasSingleChild();
        valueObjects.SeasonEventDAO.initRemoteClassAliasSingleChild();
        valueObjects.LocationDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueSeasonDAO.initRemoteClassAliasSingleChild();
        valueObjects.TeamDAO.initRemoteClassAliasSingleChild();
        valueObjects.InvitationDAO.initRemoteClassAliasSingleChild();
        valueObjects.EventTeamDAO.initRemoteClassAliasSingleChild();
        valueObjects.TeamPlayerDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueDAO.initRemoteClassAliasSingleChild();
        valueObjects.OrganizationDAO.initRemoteClassAliasSingleChild();
        valueObjects.VolleyTypeDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueAdminDAO.initRemoteClassAliasSingleChild();
        valueObjects.EventMatchDAO.initRemoteClassAliasSingleChild();
        valueObjects.MatchSetDAO.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _InvitationDAOEntityMetadata;
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
    private var _internal_id : int;
    private var _internal_response : String;
    private var _internal_fromPlayer : valueObjects.PlayerDAO;
    private var _internal_status : int;
    private var _internal_seasonEvent : valueObjects.SeasonEventDAO;
    private var _internal_toPlayer : valueObjects.PlayerDAO;
    private var _internal_team : valueObjects.TeamDAO;
    private var _internal_fromMessage : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_InvitationDAO()
    {
        _model = new _InvitationDAOEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id() : int
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get response() : String
    {
        return _internal_response;
    }

    [Bindable(event="propertyChange")]
    public function get fromPlayer() : valueObjects.PlayerDAO
    {
        return _internal_fromPlayer;
    }

    [Bindable(event="propertyChange")]
    public function get status() : int
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get seasonEvent() : valueObjects.SeasonEventDAO
    {
        return _internal_seasonEvent;
    }

    [Bindable(event="propertyChange")]
    public function get toPlayer() : valueObjects.PlayerDAO
    {
        return _internal_toPlayer;
    }

    [Bindable(event="propertyChange")]
    public function get team() : valueObjects.TeamDAO
    {
        return _internal_team;
    }

    [Bindable(event="propertyChange")]
    public function get fromMessage() : String
    {
        return _internal_fromMessage;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id(value:int) : void
    {
        var oldValue:int = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set response(value:String) : void
    {
        var oldValue:String = _internal_response;
        if (oldValue !== value)
        {
            _internal_response = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "response", oldValue, _internal_response));
        }
    }

    public function set fromPlayer(value:valueObjects.PlayerDAO) : void
    {
        var oldValue:valueObjects.PlayerDAO = _internal_fromPlayer;
        if (oldValue !== value)
        {
            _internal_fromPlayer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fromPlayer", oldValue, _internal_fromPlayer));
        }
    }

    public function set status(value:int) : void
    {
        var oldValue:int = _internal_status;
        if (oldValue !== value)
        {
            _internal_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "status", oldValue, _internal_status));
        }
    }

    public function set seasonEvent(value:valueObjects.SeasonEventDAO) : void
    {
        var oldValue:valueObjects.SeasonEventDAO = _internal_seasonEvent;
        if (oldValue !== value)
        {
            _internal_seasonEvent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "seasonEvent", oldValue, _internal_seasonEvent));
        }
    }

    public function set toPlayer(value:valueObjects.PlayerDAO) : void
    {
        var oldValue:valueObjects.PlayerDAO = _internal_toPlayer;
        if (oldValue !== value)
        {
            _internal_toPlayer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "toPlayer", oldValue, _internal_toPlayer));
        }
    }

    public function set team(value:valueObjects.TeamDAO) : void
    {
        var oldValue:valueObjects.TeamDAO = _internal_team;
        if (oldValue !== value)
        {
            _internal_team = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "team", oldValue, _internal_team));
        }
    }

    public function set fromMessage(value:String) : void
    {
        var oldValue:String = _internal_fromMessage;
        if (oldValue !== value)
        {
            _internal_fromMessage = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fromMessage", oldValue, _internal_fromMessage));
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
    public function get _model() : _InvitationDAOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _InvitationDAOEntityMetadata) : void
    {
        var oldValue : _InvitationDAOEntityMetadata = model_internal::_dminternal_model;
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
