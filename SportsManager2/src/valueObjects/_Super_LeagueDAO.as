/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - LeagueDAO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.LeagueAdminDAO;
import valueObjects.LeagueSeasonDAO;
import valueObjects.OrganizationDAO;
import valueObjects.VolleyTypeDAO;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_LeagueDAO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.sportsmanager.model.dao.LeagueDAO") == null)
            {
                flash.net.registerClassAlias("com.sportsmanager.model.dao.LeagueDAO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.sportsmanager.model.dao.LeagueDAO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.OrganizationDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueSeasonDAO.initRemoteClassAliasSingleChild();
        valueObjects.VolleyTypeDAO.initRemoteClassAliasSingleChild();
        valueObjects.LeagueAdminDAO.initRemoteClassAliasSingleChild();
        valueObjects.PlayerDAO.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _LeagueDAOEntityMetadata;
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
    private var _internal_organization : valueObjects.OrganizationDAO;
    private var _internal_seasonList : ArrayCollection;
    model_internal var _internal_seasonList_leaf:valueObjects.LeagueSeasonDAO;
    private var _internal_volleyType : valueObjects.VolleyTypeDAO;
    private var _internal_name : String;
    private var _internal_hasSeasonTeams : Boolean;
    private var _internal_adminList : ArrayCollection;
    model_internal var _internal_adminList_leaf:valueObjects.LeagueAdminDAO;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_LeagueDAO()
    {
        _model = new _LeagueDAOEntityMetadata(this);

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
    public function get organization() : valueObjects.OrganizationDAO
    {
        return _internal_organization;
    }

    [Bindable(event="propertyChange")]
    public function get seasonList() : ArrayCollection
    {
        return _internal_seasonList;
    }

    [Bindable(event="propertyChange")]
    public function get volleyType() : valueObjects.VolleyTypeDAO
    {
        return _internal_volleyType;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get hasSeasonTeams() : Boolean
    {
        return _internal_hasSeasonTeams;
    }

    [Bindable(event="propertyChange")]
    public function get adminList() : ArrayCollection
    {
        return _internal_adminList;
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

    public function set organization(value:valueObjects.OrganizationDAO) : void
    {
        var oldValue:valueObjects.OrganizationDAO = _internal_organization;
        if (oldValue !== value)
        {
            _internal_organization = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "organization", oldValue, _internal_organization));
        }
    }

    public function set seasonList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_seasonList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_seasonList = value;
            }
            else if (value is Array)
            {
                _internal_seasonList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_seasonList = null;
            }
            else
            {
                throw new Error("value of seasonList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "seasonList", oldValue, _internal_seasonList));
        }
    }

    public function set volleyType(value:valueObjects.VolleyTypeDAO) : void
    {
        var oldValue:valueObjects.VolleyTypeDAO = _internal_volleyType;
        if (oldValue !== value)
        {
            _internal_volleyType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "volleyType", oldValue, _internal_volleyType));
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

    public function set hasSeasonTeams(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_hasSeasonTeams;
        if (oldValue !== value)
        {
            _internal_hasSeasonTeams = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hasSeasonTeams", oldValue, _internal_hasSeasonTeams));
        }
    }

    public function set adminList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_adminList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_adminList = value;
            }
            else if (value is Array)
            {
                _internal_adminList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_adminList = null;
            }
            else
            {
                throw new Error("value of adminList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adminList", oldValue, _internal_adminList));
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
    public function get _model() : _LeagueDAOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _LeagueDAOEntityMetadata) : void
    {
        var oldValue : _LeagueDAOEntityMetadata = model_internal::_dminternal_model;
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
