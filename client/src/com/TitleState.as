package com
{
	import org.flixel.*;
	
	public class TitleState extends FlxState
	{
		public var particleLayer:FlxLayer;
		public var emitter:FlxEmitter;
		private var strTitle:FlxText ;
		
		override public function TitleState():void
		{
			//this.add(new FlxText(0,(FlxG.width/2) - 80, FlxG.width, 80, "Drifting on Solar Winds", 0xffffffff, null, 16,"center")) as FlxText;
			//this.add(new FlxText(0, FlxG.height  -24, FlxG.width, 8, "PRESS ANY KEY TO START", 0xffffffff, null, 8, "center"));
			strTitle = new FlxText(FlxG.width/2-80,FlxG.height/2,200,"Drifting in the Steller Winds");
			strTitle.setFormat(null,16,0x0066cc);
			this.add(strTitle);
			//this.add(new FlxText(0,(FlxG.width/2)-80,FlxG.width,"Drifting in the Steller Winds")) as FlxText;
		}
		
		private function onFade():void
      	{
      		FlxG.switchState(MenuState);
      	}
		
		override public function update():void
              {
                  if (FlxG.keys.X)
                  {
                      FlxG.flash(0xffffffff, 0.75);
                      FlxG.fade(0xff000000, 1, onFade);
                  }            
                  super.update();
              }
              
        private function initStars():void
        {
        	particleLayer = new FlxLayer();
        	
        }

	}
	
}