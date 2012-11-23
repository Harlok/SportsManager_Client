/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - PlayerAvailabilityDAO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.PlayerDAO;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_PlayerAvailabilityDAO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dao.PlayerAvailabilityDAO") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dao.PlayerAvailabilityDAO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dao.PlayerAvailabilityDAO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.PlayerDAO.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _PlayerAvailabilityDAOEntityMetadata;
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
    private var _internal_id : int;
    private var _internal_player : valueObjects.PlayerDAO;
    private var _internal_endTime : Number;
    private var _internal_dayOfWeek : int;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_PlayerAvailabilityDAO()
    {
        _model = new _PlayerAvailabilityDAOEntityMetadata(this);

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
    public function get id() : int
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get player() : valueObjects.PlayerDAO
    {
        return _internal_player;
    }

    [Bindable(event="propertyChange")]
    public function get endTime() : Number
    {
        return _internal_endTime;
    }

    [Bindable(event="propertyChange")]
    public function get dayOfWeek() : int
    {
        return _internal_dayOfWeek;
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

    public function set id(value:int) : void
    {
        var oldValue:int = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set player(value:valueObjects.PlayerDAO) : void
    {
        var oldValue:valueObjects.PlayerDAO = _internal_player;
        if (oldValue !== value)
        {
            _internal_player = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "player", oldValue, _internal_player));
        }
    }

    public function set endTime(value:Number) : void
    {
        var oldValue:Number = _internal_endTime;
        if (isNaN(_internal_endTime) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_endTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "endTime", oldValue, _internal_endTime));
        }
    }

    public function set dayOfWeek(value:int) : void
    {
        var oldValue:int = _internal_dayOfWeek;
        if (oldValue !== value)
        {
            _internal_dayOfWeek = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dayOfWeek", oldValue, _internal_dayOfWeek));
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
    public function get _model() : _PlayerAvailabilityDAOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PlayerAvailabilityDAOEntityMetadata) : void
    {
        var oldValue : _PlayerAvailabilityDAOEntityMetadata = model_internal::_dminternal_model;
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
