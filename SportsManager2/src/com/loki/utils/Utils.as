package com.loki.utils
{
	import mx.collections.ArrayCollection;
	import mx.events.CollectionEvent;

	public class Utils
	{
		public function Utils()
		{
		}
		
		public static function getItemIndex(list:Array, prop:String, value:*):Number
		{
			var index:int;
			var i:int;
			
			for (i=0; i<list.length; i++)
			{
				if (list[i][prop] == value)
				{
					index = i;
					break;
				}
			}
			
			return index;
		}
	}
}