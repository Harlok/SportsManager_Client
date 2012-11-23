package com.sportsmanager.controller
{
	import com.sportsmanager.events.LoginEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.controls.Alert;
	import mx.messaging.ChannelSet;
	import mx.messaging.channels.AMFChannel;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import services.PlayerService;
	import services.ServerTransac;
	
	import valueObjects.Player;
	
	public class ProfileManager extends EventDispatcher
	{
		private var _player:Player;
		private var _errorMessage:String;
		
		public function ProfileManager(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function get player():Player
		{
			return _player;
		}

		public function login(email:String, password:String):void
		{
			trace("Logging in with email: " + email + " password: " + password);
			
			var service:ServerTransac = new ServerTransac(onLoginResult,onLoginFault);
			service.login(email,password);
		}
		
		private function onLoginResult(result:ResultEvent):void
		{
			var p:Player = result.result as Player;
			if (p != null)
			{
				_player = p;
				trace("Logged in with player " + p.id + " = " + p.firstName + " " + p.lastName);
				dispatchEvent(new LoginEvent(LoginEvent.LOGIN_SUCCESS));
			}
			else
			{
				dispatchEvent(new LoginEvent(LoginEvent.LOGIN_FAILED));
				Alert.show("Nom d'usager (email) ou mot de passe invalide.","Error");
			}
			
		}		
		
		private function onLoginFault(fault:FaultEvent):void
		{
			//dispatchEvent(new LoginEvent(LoginEvent.LOGIN_FAILED));
			_errorMessage = "Login innaccessible: " + fault.toString();
			testConnection();
		}

		public function testConnection():void
		{
			var trans:ServerTransac = new ServerTransac(onTestConnectionResult, onTestConnectionFault);
			trans.testConnection();
		}
		
		protected function onTestConnectionResult(event:ResultEvent):void
		{
			trace("onTestConnectionResult: " + event.result);
			Alert.show(_errorMessage,"Erreur");
		}
		
		protected function onTestConnectionFault(event:FaultEvent):void
		{
			trace("onTestConnectionFault: " + event.message);
			Alert.show("Pas de connexion au serveur.","Erreur");
		}		
		
		
		
		
		
		
		
	}
}