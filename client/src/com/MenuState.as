package com
{
	import org.flixel.*;
	
	public class MenuState extends FlxState
	{
		override public function MenuState():void
		{
			//this.add(new FlxText(0,(FlxG.width/2) - 80, FlxG.width, 80, "Flixel Tutorial Game", 0xffffffff, null, 16,"center")) as FlxText;
			//this.add(new FlxText(0, FlxG.height  -24, FlxG.width, 8, "PRESS X TO START", 0xffffffff, null, 8, "center"));
			this.add(new FlxText(0,(FlxG.width/2)-80,FlxG.width,"Menu")) as FlxText;

		}
		
		private function onFade():void
      	{
      		FlxG.switchState(MenuState);
      	}
		
		override public function update():void
              {
         
                  super.update();
              }

	}
	
}