package com.sportsmanager.view.customcomponents
{
	//import spark.components.Button;
	import flash.text.TextFieldAutoSize;
	
	import mx.controls.Button;
	
	public class MultilineButton extends Button
	{
		public function MultilineButton()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			
			textField.multiline = true;
			textField.wordWrap = true;
			textField.autoSize = TextFieldAutoSize.CENTER;
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			textField.y = (this.height - textField.height) >> 1;
			height = textField.height + getStyle("paddingTop") + getStyle("paddingBottom");
			if (height < this.minHeight) this.height = this.minHeight;
		}
		
	}
}