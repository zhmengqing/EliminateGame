package control 
{
	import logics.CONST_COMMON;
	import logics.TIconData;
	import logics.TResultData;
	/**
	 * ...
	 * @author zhmq
	 * @date 2016/7/1 11:24
	 */
	public class TMapManager 
	{
		
		//---- Constants -------------------------------------------------------
		
		protected static const EType_None:int = -1;
		protected static const EType_Normal:int = 0;
		protected static const EType_Four:int = 1;
		protected static const EType_Cross:int = 2;
		protected static const EType_Five:int = 2;
		
		//---- Protected Fields ------------------------------------------------
		
		protected var FIconsVec:Vector.<Vector.<TIconData>>;
		protected var FEType:int;
		protected var FResultData:TResultData;
		
		//---- Property Fields -------------------------------------------------
		
		//---- Constructor -----------------------------------------------------
		
		public function TMapManager() 
		{
			FIconsVec = new Vector.<Vector.<TIconData>>;
			FResultData = new TResultData();
		}
		
		//---- Protected Methods -----------------------------------------------
		
		//---- Event Handling Methods ------------------------------------------
		
		//---- Property Accessing Methods --------------------------------------
		
		//---- Public Methods ----------------------------------------------------
		
		public function CreateIconData():void
		{
			
		}
		
		public function CheckIconData(
			PosX:int,
			PosY:int):void
		{
			var Icon:TIconData;
			var CurIcon:TIconData;
			var Index:int;
			var StartIndex:int;
			var EndIndex:int;
			var HoriCount:int;
			var VertCount:int;
			
			FResultData.Clear();
			
			CurIcon = FIconsVec[PosX][PosY];
			Index = PosX;
			while (Index >= 0 && FIconsVec[Index][PosY].Type == CurIcon.Type)
			{
				StartIndex = Index;
				Index--;
			}
			
			Index = PosX;
			while (Index < CONST_COMMON.MAP_Width && FIconsVec[Index][PosY].Type == CurIcon.Type)
			{
				EndIndex = Index;
				Index++;
			}
			
			HoriCount = EndIndex - StartIndex;
			if (HoriCount >= 3)
			{
				FResultData.StartX = StartIndex;
				FResultData.CountX = HoriCount;
			}
			
			Index = PosY;
			while (Index >= 0 && FIconsVec[PosX][Index].Type == CurIcon.Type)
			{
				StartIndex = Index;
				Index--;
			}
			
			Index = PosY;
			while (Index < CONST_COMMON.MAP_Width && FIconsVec[PosX][Index].Type == CurIcon.Type)
			{
				EndIndex = Index;
				Index++;
			}
			
			VertCount = EndIndex - StartIndex;
			if (HoriCount >= 3)
			{
				FResultData.StartY = StartIndex;
				FResultData.CountY = HoriCount;
			}
			
			if (HoriCount >= 5 || VertCount >= 5)
			{
				FEType = EType_Five;
			}
			else if (HoriCount >= 4 || VertCount >= 4)
			{
				FEType = EType_Four;
			}
			else if (HoriCount >= 3 && VertCount >= 3)
			{
				FEType = EType_Cross;
			}
			else if (HoriCount >= 3 || VertCount >= 3)
			{
				FEType = EType_Normal;
			}
			else
			{
				FEType = EType_None;
			}
		}
	}

}