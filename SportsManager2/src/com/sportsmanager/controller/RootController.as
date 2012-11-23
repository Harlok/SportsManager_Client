package com.sportsmanager.controller
{
	import com.sportsmanager.events.NavigationEvent;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.SharedObject;
	
	import mx.core.Application;
	import mx.core.FlexGlobals;
	import mx.messaging.ChannelSet;
	import mx.messaging.channels.AMFChannel;
	import mx.messaging.config.ServerConfig;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import services.PlayerService;
	import services.ServerTransac;
	
	import valueObjects.Player;
	
	public class RootController extends EventDispatcher
	{
		public static const VERSION:String = "0.0.4";
		
		public static const SCREEN_BACK:String = "SCREEN_BACK";
		public static const SCREEN_LOGIN:String = "SCREEN_LOGIN";
		public static const SCREEN_MAIN_MENU:String = "SCREEN_MAIN_MENU";
		public static const SCREEN_MY_PROFILE:String = "SCREEN_MY_PROFILE";
		public static const SCREEN_MY_SCHEDULE:String = "SCREEN_MY_SCHEDULE";
		public static const SCREEN_MY_INVITATIONS:String = "SCREEN_MY_INVITATIONS";
		public static const SCREEN_MY_AVAILABILITIES:String = "SCREEN_MY_AVAILABILITIES";
		public static const SCREEN_MY_INTERESTS:String = "SCREEN_MY_INTERESTS";
		public static const SCREEN_LEAGUES:String = "SCREEN_LEAGUES";
		public static const SCREEN_CURRENT:String = "SCREEN_CURRENT";
		public static const SCREEN_EVENT_SCHEDULE:String = "SCREEN_EVENT_SCHEDULE";
		public static const SCREEN_MATCH:String = "SCREEN_MATCH";
		
		
		
		private static var _instance:RootController;
		
		private var _profileManager:ProfileManager;

		private var _so:SharedObject;
		private var _sod:Object;
		private var _serverVersion:String;
		
		
		public function RootController()
		{
			setDataServerAddress();
			
		}
		
		private function setDataServerAddress():void
		{
			var myUrl:String = FlexGlobals.topLevelApplication.url;
			
			
			var channelSet:ChannelSet = new ChannelSet();
			var amfChannel:AMFChannel;
			
			if (myUrl.indexOf("localhost") != -1) // if we're running on localhost
			{
				amfChannel = new AMFChannel("my-amf","http://localhost:8400/SportsManager/messagebroker/amf");
			}
			else
			{
				amfChannel = new AMFChannel("my-amf","http://50.63.137.225:8400/SportsManager/messagebroker/amf");
			}
			channelSet.addChannel(amfChannel);
			ServerTransac.dynamicChannelSet = channelSet;
		}
		
		public function get serverVersion():String
		{
			return _serverVersion;
		}

		public function set serverVersion(value:String):void
		{
			_serverVersion = value;
		}

		public function requestScreen(name:String, itemId:int = 0):void
		{
			var navEvent:NavigationEvent = new NavigationEvent(name);
			navEvent.itemId = itemId;
			dispatchEvent(navEvent);
		}
		
		public function get profileManager():ProfileManager
		{
			return _profileManager;
		}

		public function set profileManager(value:ProfileManager):void
		{
			_profileManager = value;
		}

		public function init():void
		{
			_profileManager = new ProfileManager();
			
			_so = SharedObject.getLocal("SportsManager");
			_sod = _so.data;
			
		}
		
		public function setLocalProp(propName:String, value:*):void
		{
			_sod[propName] = value;
			_so.flush();
		}
		
		public function getLocalProp(propName:String):*
		{
			return _sod[propName];
		}
		

		public static function get instance():RootController
		{
			if (_instance == null)
			{
				_instance = new RootController();
			}
			return _instance;
		}
	}
}