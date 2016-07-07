package logics 
{
	import pool.TStubReferences;
	/**
	 * ...
	 * @author zhmq
	 * @date 2016/7/1 11:37
	 */
	public class TIconData
	{
		
		//---- Constants -------------------------------------------------------
		
		//---- Protected Fields ------------------------------------------------
		
		protected var FPosX:int;
		protected var FPosY:int;
		protected var FType:int;
		
		//---- Property Fields -------------------------------------------------
		
		//---- Constructor -----------------------------------------------------
		
		public function TIconData()
		{
			super();
		}
		
		//---- Protected Methods -----------------------------------------------
		
		//---- Event Handling Methods ------------------------------------------
		
		//---- Property Accessing Methods --------------------------------------
		
		public function get PosX():int 
		{
			return FPosX;
		}
		
		public function set PosX(value:int):void 
		{
			FPosX = value;
		}
		
		public function get PosY():int 
		{
			return FPosY;
		}
		
		public function set PosY(value:int):void 
		{
			FPosY = value;
		}
		
		public function get Type():int 
		{
			return FType;
		}
		
		public function set Type(value:int):void 
		{
			FType = value;
		}
		
		//---- Public Methods ----------------------------------------------------
	}

}