package logics 
{
	/**
	 * ...
	 * @author zhmq
	 * @date 2016/7/1 15:13
	 */
	public class TResultData 
	{
		
		//---- Constants -------------------------------------------------------
		
		//---- Protected Fields ------------------------------------------------
		
		protected var FStartX:int;
		protected var FStartY:int;
		protected var FCountX:int;
		protected var FCountY:int;
		
		//---- Property Fields -------------------------------------------------
		
		//---- Constructor -----------------------------------------------------
		
		public function TResultData() 
		{
			
		}
		
		//---- Protected Methods -----------------------------------------------
		
		//---- Event Handling Methods ------------------------------------------
		
		//---- Property Accessing Methods --------------------------------------
		
		public function get StartX():int 
		{
			return FStartX;
		}
		
		public function set StartX(value:int):void 
		{
			FStartX = value;
		}
		
		public function get StartY():int 
		{
			return FStartY;
		}
		
		public function set StartY(value:int):void 
		{
			FStartY = value;
		}
		
		public function get CountX():int 
		{
			return FCountX;
		}
		
		public function set CountX(value:int):void 
		{
			FCountX = value;
		}
		
		public function get CountY():int 
		{
			return FCountY;
		}
		
		public function set CountY(value:int):void 
		{
			FCountY = value;
		}
		
		//---- Public Methods ----------------------------------------------------
		
		public function Clear():void
		{
			FStartX = -1;
			FStartY = -1;
			FCountX = 0;
			FCountY = 0;
		}
		
	}

}