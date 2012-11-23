/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SeasonEvent.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.EventMatch;
import valueObjects.EventTeam;
import valueObjects.Invitation;
import valueObjects.LeagueSeason;
import valueObjects.Location;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_SeasonEvent extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dto.SeasonEvent") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dto.SeasonEvent", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dto.SeasonEvent", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Location.initRemoteClassAliasSingleChild();
        valueObjects.Invitation.initRemoteClassAliasSingleChild();
        valueObjects.Player.initRemoteClassAliasSingleChild();
        valueObjects.SeasonEvent.initRemoteClassAliasSingleChild();
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

    model_internal var _dminternal_model : _SeasonEventEntityMetadata;
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
    private var _internal_location : valueObjects.Location;
    private var _internal_teamInvitations : ArrayCollection;
    model_internal var _internal_teamInvitations_leaf:valueObjects.Invitation;
    private var _internal_leagueSeason : valueObjects.LeagueSeason;
    private var _internal_setTime : int;
    private var _internal_setPoints : int;
    private var _internal_setCount : int;
    private var _internal_capOn15 : int;
    private var _internal_capOn21 : int;
    private var _internal_timePerPoint : int;
    private var _internal_capOn25 : int;
    private var _internal_maxPlayerPerPool : int;
    private var _internal_date : Number;
    private var _internal_setConfig : int;
    private var _internal_poolCount : int;
    private var _internal_id : int;
    private var _internal_startTime : Number;
    private var _internal_scheduleLocked : Boolean;
    private var _internal_courtCount : int;
    private var _internal_matchList : ArrayCollection;
    model_internal var _internal_matchList_leaf:valueObjects.EventMatch;
    private var _internal_teamPosList : ArrayCollection;
    model_internal var _internal_teamPosList_leaf:valueObjects.EventTeam;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SeasonEvent()
    {
        _model = new _SeasonEventEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get location() : valueObjects.Location
    {
        return _internal_location;
    }

    [Bindable(event="propertyChange")]
    public function get teamInvitations() : ArrayCollection
    {
        return _internal_teamInvitations;
    }

    [Bindable(event="propertyChange")]
    public function get leagueSeason() : valueObjects.LeagueSeason
    {
        return _internal_leagueSeason;
    }

    [Bindable(event="propertyChange")]
    public function get setTime() : int
    {
        return _internal_setTime;
    }

    [Bindable(event="propertyChange")]
    public function get setPoints() : int
    {
        return _internal_setPoints;
    }

    [Bindable(event="propertyChange")]
    public function get setCount() : int
    {
        return _internal_setCount;
    }

    [Bindable(event="propertyChange")]
    public function get capOn15() : int
    {
        return _internal_capOn15;
    }

    [Bindable(event="propertyChange")]
    public function get capOn21() : int
    {
        return _internal_capOn21;
    }

    [Bindable(event="propertyChange")]
    public function get timePerPoint() : int
    {
        return _internal_timePerPoint;
    }

    [Bindable(event="propertyChange")]
    public function get capOn25() : int
    {
        return _internal_capOn25;
    }

    [Bindable(event="propertyChange")]
    public function get maxPlayerPerPool() : int
    {
        return _internal_maxPlayerPerPool;
    }

    [Bindable(event="propertyChange")]
    public function get date() : Number
    {
        return _internal_date;
    }

    [Bindable(event="propertyChange")]
    public function get setConfig() : int
    {
        return _internal_setConfig;
    }

    [Bindable(event="propertyChange")]
    public function get poolCount() : int
    {
        return _internal_poolCount;
    }

    [Bindable(event="propertyChange")]
    public function get id() : int
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get startTime() : Number
    {
        return _internal_startTime;
    }

    [Bindable(event="propertyChange")]
    public function get scheduleLocked() : Boolean
    {
        return _internal_scheduleLocked;
    }

    [Bindable(event="propertyChange")]
    public function get courtCount() : int
    {
        return _internal_courtCount;
    }

    [Bindable(event="propertyChange")]
    public function get matchList() : ArrayCollection
    {
        return _internal_matchList;
    }

    [Bindable(event="propertyChange")]
    public function get teamPosList() : ArrayCollection
    {
        return _internal_teamPosList;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set location(value:valueObjects.Location) : void
    {
        var oldValue:valueObjects.Location = _internal_location;
        if (oldValue !== value)
        {
            _internal_location = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "location", oldValue, _internal_location));
        }
    }

    public function set teamInvitations(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_teamInvitations;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_teamInvitations = value;
            }
            else if (value is Array)
            {
                _internal_teamInvitations = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_teamInvitations = null;
            }
            else
            {
                throw new Error("value of teamInvitations must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "teamInvitations", oldValue, _internal_teamInvitations));
        }
    }

    public function set leagueSeason(value:valueObjects.LeagueSeason) : void
    {
        var oldValue:valueObjects.LeagueSeason = _internal_leagueSeason;
        if (oldValue !== value)
        {
            _internal_leagueSeason = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "leagueSeason", oldValue, _internal_leagueSeason));
        }
    }

    public function set setTime(value:int) : void
    {
        var oldValue:int = _internal_setTime;
        if (oldValue !== value)
        {
            _internal_setTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "setTime", oldValue, _internal_setTime));
        }
    }

    public function set setPoints(value:int) : void
    {
        var oldValue:int = _internal_setPoints;
        if (oldValue !== value)
        {
            _internal_setPoints = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "setPoints", oldValue, _internal_setPoints));
        }
    }

    public function set setCount(value:int) : void
    {
        var oldValue:int = _internal_setCount;
        if (oldValue !== value)
        {
            _internal_setCount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "setCount", oldValue, _internal_setCount));
        }
    }

    public function set capOn15(value:int) : void
    {
        var oldValue:int = _internal_capOn15;
        if (oldValue !== value)
        {
            _internal_capOn15 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capOn15", oldValue, _internal_capOn15));
        }
    }

    public function set capOn21(value:int) : void
    {
        var oldValue:int = _internal_capOn21;
        if (oldValue !== value)
        {
            _internal_capOn21 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capOn21", oldValue, _internal_capOn21));
        }
    }

    public function set timePerPoint(value:int) : void
    {
        var oldValue:int = _internal_timePerPoint;
        if (oldValue !== value)
        {
            _internal_timePerPoint = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "timePerPoint", oldValue, _internal_timePerPoint));
        }
    }

    public function set capOn25(value:int) : void
    {
        var oldValue:int = _internal_capOn25;
        if (oldValue !== value)
        {
            _internal_capOn25 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capOn25", oldValue, _internal_capOn25));
        }
    }

    public function set maxPlayerPerPool(value:int) : void
    {
        var oldValue:int = _internal_maxPlayerPerPool;
        if (oldValue !== value)
        {
            _internal_maxPlayerPerPool = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxPlayerPerPool", oldValue, _internal_maxPlayerPerPool));
        }
    }

    public function set date(value:Number) : void
    {
        var oldValue:Number = _internal_date;
        if (oldValue !== value)
        {
            _internal_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "date", oldValue, _internal_date));
        }
    }

    public function set setConfig(value:int) : void
    {
        var oldValue:int = _internal_setConfig;
        if (oldValue !== value)
        {
            _internal_setConfig = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "setConfig", oldValue, _internal_setConfig));
        }
    }

    public function set poolCount(value:int) : void
    {
        var oldValue:int = _internal_poolCount;
        if (oldValue !== value)
        {
            _internal_poolCount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "poolCount", oldValue, _internal_poolCount));
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

    public function set startTime(value:Number) : void
    {
        var oldValue:Number = _internal_startTime;
        if (isNaN(_internal_startTime) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_startTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "startTime", oldValue, _internal_startTime));
        }
    }

    public function set scheduleLocked(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_scheduleLocked;
        if (oldValue !== value)
        {
            _internal_scheduleLocked = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "scheduleLocked", oldValue, _internal_scheduleLocked));
        }
    }

    public function set courtCount(value:int) : void
    {
        var oldValue:int = _internal_courtCount;
        if (oldValue !== value)
        {
            _internal_courtCount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "courtCount", oldValue, _internal_courtCount));
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

    public function set teamPosList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_teamPosList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_teamPosList = value;
            }
            else if (value is Array)
            {
                _internal_teamPosList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_teamPosList = null;
            }
            else
            {
                throw new Error("value of teamPosList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "teamPosList", oldValue, _internal_teamPosList));
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
    public function get _model() : _SeasonEventEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SeasonEventEntityMetadata) : void
    {
        var oldValue : _SeasonEventEntityMetadata = model_internal::_dminternal_model;
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
