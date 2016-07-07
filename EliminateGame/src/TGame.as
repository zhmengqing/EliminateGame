package 
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.utils.AssetManager;
	
	/**
	 * ...
	 * @author zhmq
	 * @date 2016/6/29 17:24
	 */
	public class TGame extends Sprite 
	{
		
		//---- Constants -------------------------------------------------------
		
		//---- Protected Fields ------------------------------------------------
		
		protected var FAssets:AssetManager;
		
		//---- Property Fields -------------------------------------------------
		
		//---- Constructor -----------------------------------------------------
		
		public function TGame() 
		{
			super();
		}
		
		//---- Protected Methods -----------------------------------------------
		
		//---- Event Handling Methods ------------------------------------------
		
		//---- Property Accessing Methods --------------------------------------
		
		//---- Public Methods ----------------------------------------------------
		
		public function Start(
			Assets:AssetManager):void
		{
			FAssets = Assets;
			
			addChild(new Image(FAssets.getTexture("Icon0001")));
		}
	}

}