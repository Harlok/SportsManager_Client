/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - MatchSet.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.EventMatch;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_MatchSet extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dto.MatchSet") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dto.MatchSet", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dto.MatchSet", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.EventMatch.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _MatchSetEntityMetadata;
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
    private var _internal_matchId : int;
    private var _internal_eventMatch : valueObjects.EventMatch;
    private var _internal_scoreTeam1 : int;
    private var _internal_scoreTeam2 : int;
    private var _internal_finished : Boolean;
    private var _internal_setPoints : int;
    private var _internal_setNo : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_MatchSet()
    {
        _model = new _MatchSetEntityMetadata(this);

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
    public function get matchId() : int
    {
        return _internal_matchId;
    }

    [Bindable(event="propertyChange")]
    public function get eventMatch() : valueObjects.EventMatch
    {
        return _internal_eventMatch;
    }

    [Bindable(event="propertyChange")]
    public function get scoreTeam1() : int
    {
        return _internal_scoreTeam1;
    }

    [Bindable(event="propertyChange")]
    public function get scoreTeam2() : int
    {
        return _internal_scoreTeam2;
    }

    [Bindable(event="propertyChange")]
    public function get finished() : Boolean
    {
        return _internal_finished;
    }

    [Bindable(event="propertyChange")]
    public function get setPoints() : int
    {
        return _internal_setPoints;
    }

    [Bindable(event="propertyChange")]
    public function get setNo() : int
    {
        return _internal_setNo;
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

    public function set matchId(value:int) : void
    {
        var oldValue:int = _internal_matchId;
        if (oldValue !== value)
        {
            _internal_matchId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matchId", oldValue, _internal_matchId));
        }
    }

    public function set eventMatch(value:valueObjects.EventMatch) : void
    {
        var oldValue:valueObjects.EventMatch = _internal_eventMatch;
        if (oldValue !== value)
        {
            _internal_eventMatch = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "eventMatch", oldValue, _internal_eventMatch));
        }
    }

    public function set scoreTeam1(value:int) : void
    {
        var oldValue:int = _internal_scoreTeam1;
        if (oldValue !== value)
        {
            _internal_scoreTeam1 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "scoreTeam1", oldValue, _internal_scoreTeam1));
        }
    }

    public function set scoreTeam2(value:int) : void
    {
        var oldValue:int = _internal_scoreTeam2;
        if (oldValue !== value)
        {
            _internal_scoreTeam2 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "scoreTeam2", oldValue, _internal_scoreTeam2));
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

    public function set setPoints(value:int) : void
    {
        var oldValue:int = _internal_setPoints;
        if (oldValue !== value)
        {
            _internal_setPoints = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "setPoints", oldValue, _internal_setPoints));
        }
    }

    public function set setNo(value:int) : void
    {
        var oldValue:int = _internal_setNo;
        if (oldValue !== value)
        {
            _internal_setNo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "setNo", oldValue, _internal_setNo));
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
    public function get _model() : _MatchSetEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _MatchSetEntityMetadata) : void
    {
        var oldValue : _MatchSetEntityMetadata = model_internal::_dminternal_model;
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
