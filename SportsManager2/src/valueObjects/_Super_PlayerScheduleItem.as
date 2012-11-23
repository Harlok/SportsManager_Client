/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - PlayerScheduleItem.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_PlayerScheduleItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dto.PlayerScheduleItem") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dto.PlayerScheduleItem", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dto.PlayerScheduleItem", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _PlayerScheduleItemEntityMetadata;
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
    private var _internal_teamName : String;
    private var _internal_leagueId : int;
    private var _internal_leagueName : String;
    private var _internal_eventId : int;
    private var _internal_locationId : int;
    private var _internal_locationName : String;
    private var _internal_date : Number;
    private var _internal_teamId : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_PlayerScheduleItem()
    {
        _model = new _PlayerScheduleItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get teamName() : String
    {
        return _internal_teamName;
    }

    [Bindable(event="propertyChange")]
    public function get leagueId() : int
    {
        return _internal_leagueId;
    }

    [Bindable(event="propertyChange")]
    public function get leagueName() : String
    {
        return _internal_leagueName;
    }

    [Bindable(event="propertyChange")]
    public function get eventId() : int
    {
        return _internal_eventId;
    }

    [Bindable(event="propertyChange")]
    public function get locationId() : int
    {
        return _internal_locationId;
    }

    [Bindable(event="propertyChange")]
    public function get locationName() : String
    {
        return _internal_locationName;
    }

    [Bindable(event="propertyChange")]
    public function get date() : Number
    {
        return _internal_date;
    }

    [Bindable(event="propertyChange")]
    public function get teamId() : int
    {
        return _internal_teamId;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set teamName(value:String) : void
    {
        var oldValue:String = _internal_teamName;
        if (oldValue !== value)
        {
            _internal_teamName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "teamName", oldValue, _internal_teamName));
        }
    }

    public function set leagueId(value:int) : void
    {
        var oldValue:int = _internal_leagueId;
        if (oldValue !== value)
        {
            _internal_leagueId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "leagueId", oldValue, _internal_leagueId));
        }
    }

    public function set leagueName(value:String) : void
    {
        var oldValue:String = _internal_leagueName;
        if (oldValue !== value)
        {
            _internal_leagueName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "leagueName", oldValue, _internal_leagueName));
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

    public function set locationId(value:int) : void
    {
        var oldValue:int = _internal_locationId;
        if (oldValue !== value)
        {
            _internal_locationId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "locationId", oldValue, _internal_locationId));
        }
    }

    public function set locationName(value:String) : void
    {
        var oldValue:String = _internal_locationName;
        if (oldValue !== value)
        {
            _internal_locationName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "locationName", oldValue, _internal_locationName));
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

    public function set teamId(value:int) : void
    {
        var oldValue:int = _internal_teamId;
        if (oldValue !== value)
        {
            _internal_teamId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "teamId", oldValue, _internal_teamId));
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
    public function get _model() : _PlayerScheduleItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PlayerScheduleItemEntityMetadata) : void
    {
        var oldValue : _PlayerScheduleItemEntityMetadata = model_internal::_dminternal_model;
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
