package com.sportsmanager.events
{
	import flash.events.Event;
	
	import valueObjects.EventMatch;
	
	public class NavigationEvent extends Event
	{
		public static const NAV_REQUEST:String = "NAV_REQUEST";
		
		private var _screenName:String;
		private var _itemId:int;
		private var _match:EventMatch;
		
		public function NavigationEvent(name:String)
		{
			super(NAV_REQUEST);
			_screenName = name;
		}

		

		public function get match():EventMatch
		{
			return _match;
		}

		public function set match(value:EventMatch):void
		{
			_match = value;
		}

		public function get itemId():int
		{
			return _itemId;
		}

		public function set itemId(value:int):void
		{
			_itemId = value;
		}

		public function get screenName():String
		{
			return _screenName;
		}

		public function set screenName(value:String):void
		{
			_screenName = value;
		}

	}
}