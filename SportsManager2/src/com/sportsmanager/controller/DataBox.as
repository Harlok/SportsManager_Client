package com.sportsmanager.controller
{
	import com.loki.utils.MappedArrayCollection;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	public class DataBox extends EventDispatcher
	{
		private static var _instance:DataBox;
		
		private var _orgList:MappedArrayCollection = new MappedArrayCollection();
		private var _leagueList:MappedArrayCollection = new MappedArrayCollection();
		private var _leagueSeasonList:MappedArrayCollection = new MappedArrayCollection();
		private var _seasonEventList:MappedArrayCollection = new MappedArrayCollection(); 
		private var _teamList:MappedArrayCollection = new MappedArrayCollection();
		private var _playerList:MappedArrayCollection = new MappedArrayCollection();
		private var _eventMatchList:MappedArrayCollection = new MappedArrayCollection();

		
		public function DataBox(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function get eventMatchList():MappedArrayCollection
		{
			return _eventMatchList;
		}

		public function get playerList():MappedArrayCollection
		{
			return _playerList;
		}

		public function get teamList():MappedArrayCollection
		{
			return _teamList;
		}

		public function get seasonEventList():MappedArrayCollection
		{
			return _seasonEventList;
		}

		public function get leagueSeasonList():MappedArrayCollection
		{
			return _leagueSeasonList;
		}

		public function get leagueList():MappedArrayCollection
		{
			return _leagueList;
		}

		public function get orgList():MappedArrayCollection
		{
			return _orgList;
		}
		
		public static function get instance():DataBox
		{
			if (_instance == null) { _instance = new DataBox(); }
			return _instance;
		}
		
		

	}
}