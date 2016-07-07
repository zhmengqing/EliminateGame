package utilities 
{
	/**
	 * 空闲列表，小工具类
	 * 
	 * @author xingxingtie
	 */
	public class TIdleList 
	{
		//---- Constant --------------------------------------------------------
		
		//---- Field: Protected ------------------------------------------------
		protected var FObjectList:Vector.<Object>;             //对象表
		protected var FStateList:Vector.<Boolean>;             //对象使用状态表  false表示未被使用 true表示已被使用
		//---- Field: Property -------------------------------------------------
		protected var FOnConstructObject:Function;             //构造对象的方法  不支持传参
		//---- Method: Constructor ---------------------------------------------
		public function TIdleList() 
		{
			FObjectList = new Vector.<Object>;			
			FStateList = new Vector.<Boolean>;
		}
		//---- Method: Protected -----------------------------------------------
		/**
		 * 构造对象
		 * */
		protected function ConsturctObject():Object
		{
			if (FOnConstructObject != null)
			{				
				return FOnConstructObject();
			}
			
			return null;			
		}
		//---- Method: Event Handling ------------------------------------------
		
		//---- Method: Property Accessing --------------------------------------
		public function set OnConstructObject(value:Function):void 
		{
			FOnConstructObject = value;
		}
		//---- Method: Public --------------------------------------------------
		/**
		 * 获取未被使用的对象
		 * */
		public function GetUnuseObject():*
		{
			var Index:int;
			var Obj:Object;
			
			Index = FStateList.indexOf(false);
			
			if (Index != -1)
			{
				FStateList[Index] = true;
				
				return FObjectList[Index];
			}
			else 
			{
				Obj = ConsturctObject();
				
				if (Obj != null)
				{					
					FObjectList.push(Obj);
					
					FStateList.push(true);
				}
				
				return Obj;
			}		
		}
		
		/**
		 * 放回一个对象
		 * */
		public function PutbackObject(
			Obj:Object):void
		{
			var Index:int;
			
			Index = FObjectList.indexOf(Obj);
			
			if (Index != -1)
			{				
				FStateList[Index] = false;
			}	
		}
		
		/**
		 * 使所有对象变为未被使用
		 * */
		public function PutbackAll(): void
		{
			var Index:int;
			var Count:int;
			
			Count = FObjectList.length;
			for (Index = 0; Index < Count; Index ++)
			{
				FStateList[Index] = false;
			}		
		}
		
		/**
		 * 清空所有的对象和状态
		 * */
		public function Clear():void
		{
			FObjectList.length = 0;
			
			FStateList.length = 0;
		}
		
		/**
		 * 遍历所有的对象
		 * */
		public function Enumerate(
			Method:Function):void
		{
			var Index:int;
			var Count:int;
			
			Count = FObjectList.length;
			for (Index = 0; Index < Count; Index ++)
			{
				Method(FObjectList[Index]);
			}		
		}
		
		public function GetAllUsedObj(
			Query:Vector.<Object>):void
		{
			var Index:int;
			var Count:int;
			
			Count = FStateList.length;
			for (Index = 0; Index < Count; Index ++)
			{
				if (FStateList[Index])
				{
					Query.push(FObjectList[Index]);
				}
			}
		}
	}
}