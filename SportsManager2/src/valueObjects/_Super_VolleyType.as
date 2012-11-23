/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - VolleyType.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.LevelInterest;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_VolleyType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dto.VolleyType") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dto.VolleyType", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dto.VolleyType", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.LevelInterest.initRemoteClassAliasSingleChild();
        valueObjects.VolleyLevel.initRemoteClassAliasSingleChild();
        valueObjects.Player.initRemoteClassAliasSingleChild();
        valueObjects.VolleyType.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _VolleyTypeEntityMetadata;
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
    private var _internal_sex : int;
    private var _internal_interestedPlayers : ArrayCollection;
    model_internal var _internal_interestedPlayers_leaf:valueObjects.LevelInterest;
    private var _internal_name_short : String;
    private var _internal_env : int;
    private var _internal_playerCount : int;
    private var _internal_name_long : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_VolleyType()
    {
        _model = new _VolleyTypeEntityMetadata(this);

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
    public function get sex() : int
    {
        return _internal_sex;
    }

    [Bindable(event="propertyChange")]
    public function get interestedPlayers() : ArrayCollection
    {
        return _internal_interestedPlayers;
    }

    [Bindable(event="propertyChange")]
    public function get name_short() : String
    {
        return _internal_name_short;
    }

    [Bindable(event="propertyChange")]
    public function get env() : int
    {
        return _internal_env;
    }

    [Bindable(event="propertyChange")]
    public function get playerCount() : int
    {
        return _internal_playerCount;
    }

    [Bindable(event="propertyChange")]
    public function get name_long() : String
    {
        return _internal_name_long;
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

    public function set sex(value:int) : void
    {
        var oldValue:int = _internal_sex;
        if (oldValue !== value)
        {
            _internal_sex = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sex", oldValue, _internal_sex));
        }
    }

    public function set interestedPlayers(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_interestedPlayers;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_interestedPlayers = value;
            }
            else if (value is Array)
            {
                _internal_interestedPlayers = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_interestedPlayers = null;
            }
            else
            {
                throw new Error("value of interestedPlayers must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "interestedPlayers", oldValue, _internal_interestedPlayers));
        }
    }

    public function set name_short(value:String) : void
    {
        var oldValue:String = _internal_name_short;
        if (oldValue !== value)
        {
            _internal_name_short = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name_short", oldValue, _internal_name_short));
        }
    }

    public function set env(value:int) : void
    {
        var oldValue:int = _internal_env;
        if (oldValue !== value)
        {
            _internal_env = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "env", oldValue, _internal_env));
        }
    }

    public function set playerCount(value:int) : void
    {
        var oldValue:int = _internal_playerCount;
        if (oldValue !== value)
        {
            _internal_playerCount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "playerCount", oldValue, _internal_playerCount));
        }
    }

    public function set name_long(value:String) : void
    {
        var oldValue:String = _internal_name_long;
        if (oldValue !== value)
        {
            _internal_name_long = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name_long", oldValue, _internal_name_long));
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
    public function get _model() : _VolleyTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _VolleyTypeEntityMetadata) : void
    {
        var oldValue : _VolleyTypeEntityMetadata = model_internal::_dminternal_model;
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
