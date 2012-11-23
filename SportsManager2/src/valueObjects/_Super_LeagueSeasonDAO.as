/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - LeagueSeasonDAO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.LeagueDAO;
import valueObjects.LocationDAO;
import valueObjects.SeasonEventDAO;
import valueObjects.TeamDAO;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_LeagueSeasonDAO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dao.LeagueSeasonDAO") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dao.LeagueSeasonDAO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dao.LeagueSeasonDAO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.TeamDAO.initRemoteClassAliasSingleChild();
        valueObjects.InvitationDAO.initRemoteClassAliasSingleChild();
        valueObjects.EventTeamDAO.initRemoteClassAliasSingleChild();
        valueObjects.SeasonEventDAO.initRemoteClassAliasSingleChild();
        valueObjects.TeamPlayerDAO.initRemoteClassAliasSingleChild();
        valueObjects.PlayerDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueSeasonDAO.initRemoteClassAliasSingleChild();
        valueObjects.LocationDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueDAO.initRemoteClassAliasSingleChild();
        valueObjects.OrganizationDAO.initRemoteClassAliasSingleChild();
        valueObjects.VolleyTypeDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueAdminDAO.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _LeagueSeasonDAOEntityMetadata;
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
    private var _internal_startTime : Number;
    private var _internal_setTime : int;
    private var _internal_courtCount : int;
    private var _internal_setPoints : int;
    private var _internal_setCount : int;
    private var _internal_defaultSetCount : int;
    private var _internal_defaultSetTime : int;
    private var _internal_defaultSetPoints : int;
    private var _internal_seasonTeamList : ArrayCollection;
    model_internal var _internal_seasonTeamList_leaf:valueObjects.TeamDAO;
    private var _internal_startDate : Number;
    private var _internal_defaultLocation : valueObjects.LocationDAO;
    private var _internal_defaultCapOn21 : int;
    private var _internal_defaultCourtCount : int;
    private var _internal_eventCount : int;
    private var _internal_endDate : Number;
    private var _internal_defaultStartTime : Number;
    private var _internal_league : valueObjects.LeagueDAO;
    private var _internal_eventList : ArrayCollection;
    model_internal var _internal_eventList_leaf:valueObjects.SeasonEventDAO;
    private var _internal_id : int;
    private var _internal_defaultMaxPlayerPerPool : int;
    private var _internal_defaultSetConfig : int;
    private var _internal_name : String;
    private var _internal_defaultCapOn15 : int;
    private var _internal_defaultTimePerPoint : int;
    private var _internal_defaultCapOn25 : int;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_LeagueSeasonDAO()
    {
        _model = new _LeagueSeasonDAOEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get startTime() : Number
    {
        return _internal_startTime;
    }

    [Bindable(event="propertyChange")]
    public function get setTime() : int
    {
        return _internal_setTime;
    }

    [Bindable(event="propertyChange")]
    public function get courtCount() : int
    {
        return _internal_courtCount;
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
    public function get defaultSetCount() : int
    {
        return _internal_defaultSetCount;
    }

    [Bindable(event="propertyChange")]
    public function get defaultSetTime() : int
    {
        return _internal_defaultSetTime;
    }

    [Bindable(event="propertyChange")]
    public function get defaultSetPoints() : int
    {
        return _internal_defaultSetPoints;
    }

    [Bindable(event="propertyChange")]
    public function get seasonTeamList() : ArrayCollection
    {
        return _internal_seasonTeamList;
    }

    [Bindable(event="propertyChange")]
    public function get startDate() : Number
    {
        return _internal_startDate;
    }

    [Bindable(event="propertyChange")]
    public function get defaultLocation() : valueObjects.LocationDAO
    {
        return _internal_defaultLocation;
    }

    [Bindable(event="propertyChange")]
    public function get defaultCapOn21() : int
    {
        return _internal_defaultCapOn21;
    }

    [Bindable(event="propertyChange")]
    public function get defaultCourtCount() : int
    {
        return _internal_defaultCourtCount;
    }

    [Bindable(event="propertyChange")]
    public function get eventCount() : int
    {
        return _internal_eventCount;
    }

    [Bindable(event="propertyChange")]
    public function get endDate() : Number
    {
        return _internal_endDate;
    }

    [Bindable(event="propertyChange")]
    public function get defaultStartTime() : Number
    {
        return _internal_defaultStartTime;
    }

    [Bindable(event="propertyChange")]
    public function get league() : valueObjects.LeagueDAO
    {
        return _internal_league;
    }

    [Bindable(event="propertyChange")]
    public function get eventList() : ArrayCollection
    {
        return _internal_eventList;
    }

    [Bindable(event="propertyChange")]
    public function get id() : int
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get defaultMaxPlayerPerPool() : int
    {
        return _internal_defaultMaxPlayerPerPool;
    }

    [Bindable(event="propertyChange")]
    public function get defaultSetConfig() : int
    {
        return _internal_defaultSetConfig;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get defaultCapOn15() : int
    {
        return _internal_defaultCapOn15;
    }

    [Bindable(event="propertyChange")]
    public function get defaultTimePerPoint() : int
    {
        return _internal_defaultTimePerPoint;
    }

    [Bindable(event="propertyChange")]
    public function get defaultCapOn25() : int
    {
        return _internal_defaultCapOn25;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set startTime(value:Number) : void
    {
        var oldValue:Number = _internal_startTime;
        if (isNaN(_internal_startTime) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_startTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "startTime", oldValue, _internal_startTime));
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

    public function set courtCount(value:int) : void
    {
        var oldValue:int = _internal_courtCount;
        if (oldValue !== value)
        {
            _internal_courtCount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "courtCount", oldValue, _internal_courtCount));
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

    public function set defaultSetCount(value:int) : void
    {
        var oldValue:int = _internal_defaultSetCount;
        if (oldValue !== value)
        {
            _internal_defaultSetCount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultSetCount", oldValue, _internal_defaultSetCount));
        }
    }

    public function set defaultSetTime(value:int) : void
    {
        var oldValue:int = _internal_defaultSetTime;
        if (oldValue !== value)
        {
            _internal_defaultSetTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultSetTime", oldValue, _internal_defaultSetTime));
        }
    }

    public function set defaultSetPoints(value:int) : void
    {
        var oldValue:int = _internal_defaultSetPoints;
        if (oldValue !== value)
        {
            _internal_defaultSetPoints = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultSetPoints", oldValue, _internal_defaultSetPoints));
        }
    }

    public function set seasonTeamList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_seasonTeamList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_seasonTeamList = value;
            }
            else if (value is Array)
            {
                _internal_seasonTeamList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_seasonTeamList = null;
            }
            else
            {
                throw new Error("value of seasonTeamList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "seasonTeamList", oldValue, _internal_seasonTeamList));
        }
    }

    public function set startDate(value:Number) : void
    {
        var oldValue:Number = _internal_startDate;
        if (oldValue !== value)
        {
            _internal_startDate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "startDate", oldValue, _internal_startDate));
        }
    }

    public function set defaultLocation(value:valueObjects.LocationDAO) : void
    {
        var oldValue:valueObjects.LocationDAO = _internal_defaultLocation;
        if (oldValue !== value)
        {
            _internal_defaultLocation = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultLocation", oldValue, _internal_defaultLocation));
        }
    }

    public function set defaultCapOn21(value:int) : void
    {
        var oldValue:int = _internal_defaultCapOn21;
        if (oldValue !== value)
        {
            _internal_defaultCapOn21 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultCapOn21", oldValue, _internal_defaultCapOn21));
        }
    }

    public function set defaultCourtCount(value:int) : void
    {
        var oldValue:int = _internal_defaultCourtCount;
        if (oldValue !== value)
        {
            _internal_defaultCourtCount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultCourtCount", oldValue, _internal_defaultCourtCount));
        }
    }

    public function set eventCount(value:int) : void
    {
        var oldValue:int = _internal_eventCount;
        if (oldValue !== value)
        {
            _internal_eventCount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "eventCount", oldValue, _internal_eventCount));
        }
    }

    public function set endDate(value:Number) : void
    {
        var oldValue:Number = _internal_endDate;
        if (oldValue !== value)
        {
            _internal_endDate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "endDate", oldValue, _internal_endDate));
        }
    }

    public function set defaultStartTime(value:Number) : void
    {
        var oldValue:Number = _internal_defaultStartTime;
        if (isNaN(_internal_defaultStartTime) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_defaultStartTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultStartTime", oldValue, _internal_defaultStartTime));
        }
    }

    public function set league(value:valueObjects.LeagueDAO) : void
    {
        var oldValue:valueObjects.LeagueDAO = _internal_league;
        if (oldValue !== value)
        {
            _internal_league = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "league", oldValue, _internal_league));
        }
    }

    public function set eventList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_eventList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_eventList = value;
            }
            else if (value is Array)
            {
                _internal_eventList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_eventList = null;
            }
            else
            {
                throw new Error("value of eventList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "eventList", oldValue, _internal_eventList));
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

    public function set defaultMaxPlayerPerPool(value:int) : void
    {
        var oldValue:int = _internal_defaultMaxPlayerPerPool;
        if (oldValue !== value)
        {
            _internal_defaultMaxPlayerPerPool = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultMaxPlayerPerPool", oldValue, _internal_defaultMaxPlayerPerPool));
        }
    }

    public function set defaultSetConfig(value:int) : void
    {
        var oldValue:int = _internal_defaultSetConfig;
        if (oldValue !== value)
        {
            _internal_defaultSetConfig = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultSetConfig", oldValue, _internal_defaultSetConfig));
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

    public function set defaultCapOn15(value:int) : void
    {
        var oldValue:int = _internal_defaultCapOn15;
        if (oldValue !== value)
        {
            _internal_defaultCapOn15 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultCapOn15", oldValue, _internal_defaultCapOn15));
        }
    }

    public function set defaultTimePerPoint(value:int) : void
    {
        var oldValue:int = _internal_defaultTimePerPoint;
        if (oldValue !== value)
        {
            _internal_defaultTimePerPoint = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultTimePerPoint", oldValue, _internal_defaultTimePerPoint));
        }
    }

    public function set defaultCapOn25(value:int) : void
    {
        var oldValue:int = _internal_defaultCapOn25;
        if (oldValue !== value)
        {
            _internal_defaultCapOn25 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultCapOn25", oldValue, _internal_defaultCapOn25));
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
    public function get _model() : _LeagueSeasonDAOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _LeagueSeasonDAOEntityMetadata) : void
    {
        var oldValue : _LeagueSeasonDAOEntityMetadata = model_internal::_dminternal_model;
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
