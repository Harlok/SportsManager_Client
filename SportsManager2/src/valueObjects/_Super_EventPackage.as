/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EventPackage.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.EventMatch;
import valueObjects.Player;
import valueObjects.SeasonEvent;
import valueObjects.Team;
import valueObjects.TeamPlayer;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_EventPackage extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dto.EventPackage") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dto.EventPackage", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dto.EventPackage", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.SeasonEvent.initRemoteClassAliasSingleChild();
        valueObjects.Location.initRemoteClassAliasSingleChild();
        valueObjects.Invitation.initRemoteClassAliasSingleChild();
        valueObjects.Player.initRemoteClassAliasSingleChild();
        valueObjects.Team.initRemoteClassAliasSingleChild();
        valueObjects.LeagueSeason.initRemoteClassAliasSingleChild();
        valueObjects.League.initRemoteClassAliasSingleChild();
        valueObjects.Organization.initRemoteClassAliasSingleChild();
        valueObjects.VolleyType.initRemoteClassAliasSingleChild();
        valueObjects.LevelInterest.initRemoteClassAliasSingleChild();
        valueObjects.VolleyLevel.initRemoteClassAliasSingleChild();
        valueObjects.LeagueAdmin.initRemoteClassAliasSingleChild();
        valueObjects.TeamPlayer.initRemoteClassAliasSingleChild();
        valueObjects.EventMatch.initRemoteClassAliasSingleChild();
        valueObjects.MatchSet.initRemoteClassAliasSingleChild();
        valueObjects.EventTeam.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _EventPackageEntityMetadata;
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
    private var _internal_seasonEvent : valueObjects.SeasonEvent;
    private var _internal_teamList : ArrayCollection;
    model_internal var _internal_teamList_leaf:valueObjects.Team;
    private var _internal_matchList : ArrayCollection;
    model_internal var _internal_matchList_leaf:valueObjects.EventMatch;
    private var _internal_playerList : ArrayCollection;
    model_internal var _internal_playerList_leaf:valueObjects.Player;
    private var _internal_teamPlayerList : ArrayCollection;
    model_internal var _internal_teamPlayerList_leaf:valueObjects.TeamPlayer;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EventPackage()
    {
        _model = new _EventPackageEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get seasonEvent() : valueObjects.SeasonEvent
    {
        return _internal_seasonEvent;
    }

    [Bindable(event="propertyChange")]
    public function get teamList() : ArrayCollection
    {
        return _internal_teamList;
    }

    [Bindable(event="propertyChange")]
    public function get matchList() : ArrayCollection
    {
        return _internal_matchList;
    }

    [Bindable(event="propertyChange")]
    public function get playerList() : ArrayCollection
    {
        return _internal_playerList;
    }

    [Bindable(event="propertyChange")]
    public function get teamPlayerList() : ArrayCollection
    {
        return _internal_teamPlayerList;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set seasonEvent(value:valueObjects.SeasonEvent) : void
    {
        var oldValue:valueObjects.SeasonEvent = _internal_seasonEvent;
        if (oldValue !== value)
        {
            _internal_seasonEvent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "seasonEvent", oldValue, _internal_seasonEvent));
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

    public function set matchList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_matchList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_matchList = value;
            }
            else if (value is Array)
            {
                _internal_matchList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_matchList = null;
            }
            else
            {
                throw new Error("value of matchList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matchList", oldValue, _internal_matchList));
        }
    }

    public function set playerList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_playerList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_playerList = value;
            }
            else if (value is Array)
            {
                _internal_playerList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_playerList = null;
            }
            else
            {
                throw new Error("value of playerList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "playerList", oldValue, _internal_playerList));
        }
    }

    public function set teamPlayerList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_teamPlayerList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_teamPlayerList = value;
            }
            else if (value is Array)
            {
                _internal_teamPlayerList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_teamPlayerList = null;
            }
            else
            {
                throw new Error("value of teamPlayerList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "teamPlayerList", oldValue, _internal_teamPlayerList));
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
    public function get _model() : _EventPackageEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EventPackageEntityMetadata) : void
    {
        var oldValue : _EventPackageEntityMetadata = model_internal::_dminternal_model;
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
