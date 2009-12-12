package com
{
	import org.flixel.*;
	
	public class TitleState extends FlxState
	{
		public var particleLayer:FlxLayer;
		public var emitter:FlxEmitter;
		private var strTitle:FlxText ;
		private var strCounter:FlxText;
		private var numStarCounter:int = 1200;
		
		[Embed(source="/assets/testing/particlesheet.png")] private var partStar:Class;
		[Embed(source="/assets/testing/cursor.png")] private var ImgCursor:Class;
		
		override public function TitleState():void
		{
			
			initStars();
			this.add(particleLayer);
			strTitle = new FlxText(FlxG.width/2-100,FlxG.height/2-50,400,"Drifting in the Steller Winds");
			strTitle.setFormat(null,12,0x0066cc);
			strCounter = new FlxText(FlxG.width/2-100,FlxG.height/2+20,400,"Emitter Here");
			this.add(strTitle);
			this.add(strCounter);
			
			FlxG.showCursor(ImgCursor);
			
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
                  
               	  numStarCounter -= FlxG.elapsed/60;
               	  if(numStarCounter <5){
               	  	FlxG.switchState(MenuState);
               	  }
         
               	  if(numStarCounter ){ strCounter.text = "Press 'X' to begin  "+numStarCounter; }
                  super.update();
              }
              
        private function initStars():void
        {
        	particleLayer = new FlxLayer();
        	emitter = new FlxEmitter(0,0,0.2);
        	emitter.width=400;
        	emitter.height=10;
        	emitter.gravity = 1;
        	emitter.setXVelocity(-15,-5);
        	emitter.setYVelocity(20,40);
        	emitter.visible = true;
        	emitter.createSprites(partStar,90,true,particleLayer);
        	FlxG.state.add(emitter);
        }

	}
	
}