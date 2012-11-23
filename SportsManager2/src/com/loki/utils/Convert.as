package com.loki.utils 
{

	public class Convert
	{
		private static var monthStringId:Array;
		private static var dayStringId:Array;
		
		public function Convert() {	}
		
		public static function timeString(hours:Number):String
		{
			var str:String = "";
			
			if (hours < 10) { str += "0"; }
			str += Math.floor(hours) + ":";
			
			var minutes:Number = Math.round((hours - Math.floor(hours))*60);
			
			if (minutes < 10) { str += "0"; }
			str += minutes;
			
			return str;
		}
		
		public static function getMonthName(no:uint, format:int=1):String
		{
			var str:String = "";
			if (no <= 11)
			{
				str = ["Jan","Fev","Mar","Avr","Mai","Juin","Jui","Aou","Sep","Oct","Nov","Dec"][no]; 
			}
			return str;
		}
		
		public static function getDayName(no:int, format:int = 1):String
		{
			var str:String = "";
			if (no <= 6)
			{
				str = ["Dim","Lun","Mar","Mer","Jeu","Ven","Sam"][no]; 
			}
			return str;
		}
		
		public static function dateToString(date:Date, format:String):String
		{
			var result:String = format;
			var i:uint;
			var str:String;
			
			//[ShortDayName] [ShortMonthName] [DayNumber], [Hour]:[Minute]" 
			
			if (result.indexOf("[LongWeekDay]") > -1)
			{
				str = getDayName(date.getDay() + 1, 1);
				result = result.replace("[LongWeekDay]", str);
			}

			if (result.indexOf("[ShortWeekDay]") > -1)
			{
				str = getDayName(date.getDay() + 1, 2);
				result = result.replace("[ShortWeekDay]", str);
			}
			
			if (result.indexOf("[LongMonthName]") > -1)
			{
				str = getMonthName(date.getMonth()+1, 1);
				result = result.replace("[LongMonthName]", str);
			}
			
			if (result.indexOf("[ShortMonthName]") > -1)
			{
				str = getMonthName(date.getMonth()+1, 2);
				result = result.replace("[ShortMonthName]", str);
			}
			
			if (result.indexOf("[Day]") > -1)
			{
				str = String(date.getDate());
				if (str.length == 1)
				{ str = "0" + str; }
				result = result.replace("[Day]", str);
			}
			
			if (result.indexOf("[FullYear]") > -1)
			{
				str = String(date.getFullYear());
				result = result.replace("[FullYear]", str);
			}
			
			if (result.indexOf("[Hour]") > -1)
			{
				str = String(date.getHours());
				if (str.length == 1) { str = "0" + str; }
				result = result.replace("[Hour]", str);
			}
			
			if (result.indexOf("[Minute]") > -1)
			{
				str = String(date.getMinutes());
				if (str.length == 1) { str = "0" + str; }
				result = result.replace("[Minute]", str);
			}
			
			return result;
		}
		
		public static function formatPhone(str:String):String
		{
			var result:String = "";
			
			return str; // for now...
		}
		
		public static function stripChars(strIn:String, charList:Array):String
		{
			var i:uint;
			var char:String;
			var strOut:String = strIn;
			
			for (i = 0; i < charList.length; i++)
			{
				strOut = strOut.split(charList[i]).join("");
			}
			
			return(strOut);
		}
		
		public static function trim(strIn:String):String
		{
			return (stripChars(strIn, [String.fromCharCode(10), String.fromCharCode(13), String.fromCharCode(9)]));
		}
		
		public static function listCharCodes(str:String):void
		{
			var i:uint;
			//trace("listCharCodes: " + str);
			for (i = 0; i < str.length; i++)
			{
				trace(str.charAt(i) + " = " + str.charCodeAt(i));
			}
		}
		
		public static function numbersOnly(strIn:String, acceptMathSymbols:Boolean = false):String
		{
			var strOut:String = "";
			var i:uint;
			var code:Number;
			
			for (i = 0; i < strIn.length; i++)
			{
				code = strIn.charCodeAt(i);
				if ((code >= 48) && (code <= 57))
				{
					strOut += strIn.charAt(i);
				}
				
				if (acceptMathSymbols)
				{
					if ((code == 45) || (code == 46)) // if character is . or -
					{ strOut += strIn.charAt(i); }
					else if (code == 44) // if character is a , replace it with .
					{ strOut += "."; }
				}
			}
			return strOut;
		}
		
		
		public static function dateFromMySQL(str:String):Date
		{
			// 2010-01-23 10:00:00
			var date:Date = new Date();
			var alter:String = str.split("-").join("/");
			date.setTime(Date.parse(alter));
			return date;
		}

		public static function pad(str:String, char:String, totalLength:uint, direction:String="left"):String
		{
			var out:String = str;
			if (out.length < totalLength) // if the original string is not of the desired length, start padding.
			{
				var i:uint;
				for (i = 0; i < (totalLength - str.length); i++)
				{
					if (direction == "left")
					{ out = char + out; }
					else
					{ out = out + char; }
				}
			}
			return out;
		}
		
		public static function capFirstLetter(strIn:String):String
		{
			var result:String = strIn.charAt(0).toUpperCase() + strIn.substr(1,int.MAX_VALUE);
			return result;
		}
		
		public static function cleanName(strIn:String):String
		{
			var result:String;
			var i:int;
			var part:Array = strIn.split(" ");

			for (i=0; i<part.length; i++)
			{
				part[i] = capFirstLetter(part[i]);
			}
			result = part.join(" ");

			part = result.split("-");
			for (i=0; i<part.length; i++)
			{
				part[i] = capFirstLetter(part[i]);
			}
			result = part.join("-");			
			
			return result;
		}
		
	}

}