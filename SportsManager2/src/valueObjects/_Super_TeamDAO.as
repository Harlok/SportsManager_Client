/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TeamDAO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.EventTeamDAO;
import valueObjects.InvitationDAO;
import valueObjects.LeagueSeasonDAO;
import valueObjects.TeamPlayerDAO;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_TeamDAO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dao.TeamDAO") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dao.TeamDAO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dao.TeamDAO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.InvitationDAO.initRemoteClassAliasSingleChild();
        valueObjects.EventTeamDAO.initRemoteClassAliasSingleChild();
        valueObjects.SeasonEventDAO.initRemoteClassAliasSingleChild();
        valueObjects.TeamDAO.initRemoteClassAliasSingleChild();
        valueObjects.TeamPlayerDAO.initRemoteClassAliasSingleChild();
        valueObjects.PlayerDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueSeasonDAO.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _TeamDAOEntityMetadata;
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
    private var _internal_invitations : ArrayCollection;
    model_internal var _internal_invitations_leaf:valueObjects.InvitationDAO;
    private var _internal_teamEvents : ArrayCollection;
    model_internal var _internal_teamEvents_leaf:valueObjects.EventTeamDAO;
    private var _internal_teamPlayers : ArrayCollection;
    model_internal var _internal_teamPlayers_leaf:valueObjects.TeamPlayerDAO;
    private var _internal_leagueSeasonList : ArrayCollection;
    model_internal var _internal_leagueSeasonList_leaf:valueObjects.LeagueSeasonDAO;
    private var _internal_name : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TeamDAO()
    {
        _model = new _TeamDAOEntityMetadata(this);

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
    public function get invitations() : ArrayCollection
    {
        return _internal_invitations;
    }

    [Bindable(event="propertyChange")]
    public function get teamEvents() : ArrayCollection
    {
        return _internal_teamEvents;
    }

    [Bindable(event="propertyChange")]
    public function get teamPlayers() : ArrayCollection
    {
        return _internal_teamPlayers;
    }

    [Bindable(event="propertyChange")]
    public function get leagueSeasonList() : ArrayCollection
    {
        return _internal_leagueSeasonList;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
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

    public function set invitations(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_invitations;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_invitations = value;
            }
            else if (value is Array)
            {
                _internal_invitations = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_invitations = null;
            }
            else
            {
                throw new Error("value of invitations must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "invitations", oldValue, _internal_invitations));
        }
    }

    public function set teamEvents(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_teamEvents;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_teamEvents = value;
            }
            else if (value is Array)
            {
                _internal_teamEvents = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_teamEvents = null;
            }
            else
            {
                throw new Error("value of teamEvents must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "teamEvents", oldValue, _internal_teamEvents));
        }
    }

    public function set teamPlayers(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_teamPlayers;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_teamPlayers = value;
            }
            else if (value is Array)
            {
                _internal_teamPlayers = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_teamPlayers = null;
            }
            else
            {
                throw new Error("value of teamPlayers must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "teamPlayers", oldValue, _internal_teamPlayers));
        }
    }

    public function set leagueSeasonList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_leagueSeasonList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_leagueSeasonList = value;
            }
            else if (value is Array)
            {
                _internal_leagueSeasonList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_leagueSeasonList = null;
            }
            else
            {
                throw new Error("value of leagueSeasonList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "leagueSeasonList", oldValue, _internal_leagueSeasonList));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
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
    public function get _model() : _TeamDAOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TeamDAOEntityMetadata) : void
    {
        var oldValue : _TeamDAOEntityMetadata = model_internal::_dminternal_model;
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
