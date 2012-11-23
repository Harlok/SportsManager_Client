package com.loki.utils
{
	import mx.collections.ArrayCollection;
	
	public class MappedArrayCollection extends ArrayCollection
	{
		private var _map:Object = new Object();
		
		public function MappedArrayCollection(source:Array=null)
		{
			super(source);
		}
		
		override public function addItem(item:Object):void
		{
			var index:int;
			
			if (_map[item["id"]] != null) // if this item already exists in the mapped list
			{
				removeItem(_map[item["id"]]); // remove it
			}
			super.addItem(item); // add it to the list
			_map[item["id"]] = item; // map it
		}
		
		public function removeItem(item:Object):void
		{
			var index:int = this.getItemIndex(_map[item["id"]]);
			if (index > -1)
			{
				this.removeItemAt(index);
			}
			_map[item["id"]] = null;
		}
		
		public function getItemById(id:int):Object
		{
			var obj:Object;
			if (_map[id] != null)
			{
				obj = _map[id];
			}
			return obj;
		}
		
	}
}