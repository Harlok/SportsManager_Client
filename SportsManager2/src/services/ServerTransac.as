package services
{
	import com.sportsmanager.controller.RootController;
	
	import mx.messaging.ChannelSet;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class ServerTransac extends PlayerService
	{
		private static var _dynamicChannelSet:ChannelSet;
		
		public function ServerTransac(onSuccess:Function=null, onFault:Function=null)
		{
			super();
			if (onSuccess != null) { this.addEventListener(ResultEvent.RESULT, onSuccess,false,0,true); }
			if (onFault != null)   { this.addEventListener(FaultEvent.FAULT, onFault,false,0,true); }
			
			this.channelSet = dynamicChannelSet;
		}

		public static function get dynamicChannelSet():ChannelSet
		{
			return _dynamicChannelSet;
		}

		public static function set dynamicChannelSet(value:ChannelSet):void
		{
			_dynamicChannelSet = value;
		}

	}
}