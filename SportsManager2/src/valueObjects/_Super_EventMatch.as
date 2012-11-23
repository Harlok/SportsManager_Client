/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EventMatch.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.MatchSet;
import valueObjects.SeasonEvent;
import valueObjects.Team;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_EventMatch extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dto.EventMatch") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dto.EventMatch", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dto.EventMatch", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.MatchSet.initRemoteClassAliasSingleChild();
        valueObjects.EventMatch.initRemoteClassAliasSingleChild();
        valueObjects.SeasonEvent.initRemoteClassAliasSingleChild();
        valueObjects.Team.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _EventMatchEntityMetadata;
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
    private var _internal_winningTeam : int;
    private var _internal_team2Id : int;
    private var _internal_eventId : int;
    private var _internal_setList : ArrayCollection;
    model_internal var _internal_setList_leaf:valueObjects.MatchSet;
    private var _internal_seasonEvent : valueObjects.SeasonEvent;
    private var _internal_courtNo : int;
    private var _internal_team1Id : int;
    private var _internal_finished : Boolean;
    private var _internal_team1 : valueObjects.Team;
    private var _internal_team2 : valueObjects.Team;
    private var _internal_timeSlot : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EventMatch()
    {
        _model = new _EventMatchEntityMetadata(this);

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
    public function get winningTeam() : int
    {
        return _internal_winningTeam;
    }

    [Bindable(event="propertyChange")]
    public function get team2Id() : int
    {
        return _internal_team2Id;
    }

    [Bindable(event="propertyChange")]
    public function get eventId() : int
    {
        return _internal_eventId;
    }

    [Bindable(event="propertyChange")]
    public function get setList() : ArrayCollection
    {
        return _internal_setList;
    }

    [Bindable(event="propertyChange")]
    public function get seasonEvent() : valueObjects.SeasonEvent
    {
        return _internal_seasonEvent;
    }

    [Bindable(event="propertyChange")]
    public function get courtNo() : int
    {
        return _internal_courtNo;
    }

    [Bindable(event="propertyChange")]
    public function get team1Id() : int
    {
        return _internal_team1Id;
    }

    [Bindable(event="propertyChange")]
    public function get finished() : Boolean
    {
        return _internal_finished;
    }

    [Bindable(event="propertyChange")]
    public function get team1() : valueObjects.Team
    {
        return _internal_team1;
    }

    [Bindable(event="propertyChange")]
    public function get team2() : valueObjects.Team
    {
        return _internal_team2;
    }

    [Bindable(event="propertyChange")]
    public function get timeSlot() : int
    {
        return _internal_timeSlot;
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

    public function set winningTeam(value:int) : void
    {
        var oldValue:int = _internal_winningTeam;
        if (oldValue !== value)
        {
            _internal_winningTeam = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "winningTeam", oldValue, _internal_winningTeam));
        }
    }

    public function set team2Id(value:int) : void
    {
        var oldValue:int = _internal_team2Id;
        if (oldValue !== value)
        {
            _internal_team2Id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "team2Id", oldValue, _internal_team2Id));
        }
    }

    public function set eventId(value:int) : void
    {
        var oldValue:int = _internal_eventId;
        if (oldValue !== value)
        {
            _internal_eventId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "eventId", oldValue, _internal_eventId));
        }
    }

    public function set setList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_setList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_setList = value;
            }
            else if (value is Array)
            {
                _internal_setList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_setList = null;
            }
            else
            {
                throw new Error("value of setList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "setList", oldValue, _internal_setList));
        }
    }

    public function set seasonEvent(value:valueObjects.SeasonEvent) : void
    {
        var oldValue:valueObjects.SeasonEvent = _internal_seasonEvent;
        if (oldValue !== value)
        {
            _internal_seasonEvent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "seasonEvent", oldValue, _internal_seasonEvent));
        }
    }

    public function set courtNo(value:int) : void
    {
        var oldValue:int = _internal_courtNo;
        if (oldValue !== value)
        {
            _internal_courtNo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "courtNo", oldValue, _internal_courtNo));
        }
    }

    public function set team1Id(value:int) : void
    {
        var oldValue:int = _internal_team1Id;
        if (oldValue !== value)
        {
            _internal_team1Id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "team1Id", oldValue, _internal_team1Id));
        }
    }

    public function set finished(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_finished;
        if (oldValue !== value)
        {
            _internal_finished = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "finished", oldValue, _internal_finished));
        }
    }

    public function set team1(value:valueObjects.Team) : void
    {
        var oldValue:valueObjects.Team = _internal_team1;
        if (oldValue !== value)
        {
            _internal_team1 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "team1", oldValue, _internal_team1));
        }
    }

    public function set team2(value:valueObjects.Team) : void
    {
        var oldValue:valueObjects.Team = _internal_team2;
        if (oldValue !== value)
        {
            _internal_team2 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "team2", oldValue, _internal_team2));
        }
    }

    public function set timeSlot(value:int) : void
    {
        var oldValue:int = _internal_timeSlot;
        if (oldValue !== value)
        {
            _internal_timeSlot = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "timeSlot", oldValue, _internal_timeSlot));
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
    public function get _model() : _EventMatchEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EventMatchEntityMetadata) : void
    {
        var oldValue : _EventMatchEntityMetadata = model_internal::_dminternal_model;
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
