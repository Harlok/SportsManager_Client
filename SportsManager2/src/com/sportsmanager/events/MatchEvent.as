package com.sportsmanager.events
{
	import flash.events.Event;
	
	public class MatchEvent extends Event
	{
		public static const MATCH_UPDATE:String = "MATCH_UPDATE";
		
		public function MatchEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}