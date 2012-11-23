package com.loki.utils 
{
	public class Validator
	{
		public var isValid:Boolean;
		public var invalidFieldList:Array;
		public var traceResults:Boolean = false;
		
		public function Validator() 
		{
			isValid = true;
			invalidFieldList = new Array();
		}
		
		public function isNumeric(str:String, fieldName:String = null):Boolean
		{
			
			var result:Boolean = !isNaN(Number(str));
			isValid = isValid && result;
			if (!result && (fieldName != null)) // If the field value is invalid and a field name was specified.
			{
				invalidFieldList.push(fieldName);
			}
			if (traceResults) { trace("isNumeric: " + result + " (" + fieldName + ")"); }
			return result;
		}
		
		public function isAlphaOnly(strIn:String, fieldName:String = null):Boolean
		{
			var result:Boolean = true;
			var i:uint;
			var c:Number; // Character code
			var upStr:String = strIn.toUpperCase(); // 
			
			for (i = 0; i < upStr.length; i++)
			{
				c = upStr.charCodeAt(i);
				//if (!inRanges(c,[[32],[39],[45],[39,45],[65,90],[192,214],[217,221],[224,246],[249,253]]))
				if (!((c == 32) || (c == 39) || (c == 45) || (c >= 65 && c <= 90) || (c >= 192 && c <= 214) || (c >= 217 && c <= 221) || (c >= 224 && c <= 246) || (c >= 249 && c <= 253)))
				{
					result = false;
					trace("REJECTED: " + upStr.charAt(i) + " = " + upStr.charCodeAt(i));
				}
			}
			isValid = isValid && result;
			if (!result && (fieldName != null)) // If the field value is invalid and a field name was specified.
			{
				invalidFieldList.push(fieldName);
			}
			if (traceResults) { trace("isAlphaOnly: " + result + " (" + fieldName + ")"); }
			return result;
		}

		public function isEmail(strIn:String, fieldName:String = null):Boolean
		{
			var result:Boolean = true;
			var part:Array;
			var suffix:Array;
			
			part = strIn.split("@");
			
			if (part.length != 2) { result = false; }
			else
			{
				suffix = part[1].split(".");
				if (suffix.length < 2) { result = false; }
			}
			
			isValid = isValid && result;
			if (!result && (fieldName != null)) // If the field value is invalid and a field name was specified.
			{
				invalidFieldList.push(fieldName);
			}
			if (traceResults) { trace("isEmail    : " + result + " (" + fieldName + ")"); }
			return result;
		}
		
		public function isZipCode(strIn:String, fieldName:String = null):Boolean
		{
			return (isAlphaOnly(strIn.charAt(0)+strIn.charAt(2)+strIn.charAt(4)) && (isNumeric(strIn.charAt(1)+strIn.charAt(3)+strIn.charAt(5)))); 
		}
		
		
		public function isPhone(strIn:String, fieldName:String = null):Boolean
		{
			var result:Boolean = true;
			var numStr:String = Convert.numbersOnly(strIn);
			
			if (numStr.length != 10) // if the phone number has the wrong number of digits
			{ result = false; }
			
			isValid = isValid && result;
			if (!result && (fieldName != null)) // If the field value is invalid and a field name was specified.
			{
				invalidFieldList.push(fieldName);
			}
			if (traceResults) { trace("isPhone    : " + result + " (" + fieldName + ")"); }
			return result;
		}
		
		public function inRanges(val:Number, rangeList:Array):Boolean
		{
			var within:Boolean = false;
			var i:uint;
			var range:Array;
			
			for (i = 0; i < rangeList.length; i++)
			{
				range = rangeList[i];
				if ((range.length == 1) && (val == range[0]))
				{
					within = true;
					break;
				}
				else if ((range.length == 2) && (val >= range[0]) && (val <= range[1]))
				{
					within = true;
					break;
				}
			}
			
			return within;
		}
		
		public function isNotEmpty(strIn:String, fieldName:String = null):Boolean
		{
			var result:Boolean = true;
			if (strIn == null)
			{
				result = false;
			}
			else if (strIn.length == 0)
			{
				result = false;
			}
			
			isValid = isValid && result;
			if (!result && (fieldName != null)) // If the field value is invalid and a field name was specified.
			{
				invalidFieldList.push(fieldName);
			}
			if (traceResults) { trace("isNotEmpty : " + result + " (" + fieldName + ")"); }
			return result;
		}
		
		public function isNotNull(obj:Object, fieldName:String = null):Boolean
		{
			var result:Boolean = (obj != null);
			
			isValid = isValid && result;
			if (!result && (fieldName != null)) // If the field value is invalid and a field name was specified.
			{
				invalidFieldList.push(fieldName);
			}
			if (traceResults) { trace("isNotNull : " + result + " (" + fieldName + ")"); }
			return result;
		}
		
		public function isTrue(val:Boolean, fieldName:String = null):Boolean
		{
			var result:Boolean = (val == true);
			
			isValid = isValid && result;
			if (!result && (fieldName != null)) // If the field value is invalid and a field name was specified.
			{
				invalidFieldList.push(fieldName);
			}
			if (traceResults) { trace("isTrue : " + result + " (" + fieldName + ")"); }
			return result;
		}
		
		public function isBetween(str:String, min:Number, max:Number, fieldName:String = null):Boolean
		{
			var result:Boolean = true;
			var num:Number = Number(str);
			
			if (isNaN(num))
			{ result = false; }
			else if ((num < min) || (num > max))
			{ result = false; }
			
			
			isValid = isValid && result;
			if (!result && (fieldName != null)) // If the field value is invalid and a field name was specified.
			{
				invalidFieldList.push(fieldName);
			}
			if (traceResults) { trace("isBetween " + min + " and " + max + " : " + result + " (" + fieldName + ")"); }
			return result;
		}
		
		
		
		
	}

}