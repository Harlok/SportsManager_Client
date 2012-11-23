package com.sportsmanager.events
{
	import flash.events.Event;
	
	
	public class LoginEvent extends Event
	{
		public static const LOGIN_SUCCESS:String = "LOGIN_SUCCESS";
		public static const LOGIN_FAILED:String = "LOGIN_FAILED";
		public static const CREATION_SUCCESS:String = "CREATION_SUCCESS";
		public static const CREATION_FAILED:String = "CREATION_FAILED";
		public static const NO_CONNECTION:String = "NO_CONNECTION";
		
		
		public function LoginEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}


	}
}