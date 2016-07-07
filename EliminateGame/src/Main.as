package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.system.Capabilities;
	import flash.system.System;
	import starling.core.Starling;
	import starling.events.Event;
	import starling.utils.AssetManager;
	
	/**
	 * ...
	 * @author zhmq
	 */
	public class Main extends Sprite 
	{
		protected var FStarling:Starling;
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(flash.events.Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:flash.events.Event = null):void 
		{
			removeEventListener(flash.events.Event.ADDED_TO_STAGE, init);
			
			FStarling = new Starling(
				TGame,
				stage);
			FStarling.addEventListener(starling.events.Event.ROOT_CREATED, OnRootCreate);
			
		}
		
		protected function OnRootCreate(
			E:starling.events.Event):void
		{
			OnLoadAssets(OnStartGame);
		}
		private function OnLoadAssets(
			OnComplete:Function):void
        {
            var Assets:AssetManager = new AssetManager();
			
            Assets.verbose = Capabilities.isDebugger;
            Assets.enqueue(TEmbeddedAssets);
            
            Assets.loadQueue(function(Ratio:Number):void
            {
                trace(Ratio);
                if (Ratio == 1)
                {
                    // now would be a good time for a clean-up
                    System.pauseForGCIfCollectionImminent(0);
                    System.gc();
					
                    OnComplete(Assets);
                }
            });
        }
		
        private function OnStartGame(
			Assets:AssetManager):void
        {
            var Game:TGame = FStarling.root as TGame;
			Game.Start(Assets);
        }
	}
	
}