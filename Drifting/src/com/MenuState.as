package com
{
	import org.flixel.*;
	
	
	public class MenuState extends FlxState
	{
		private var txtTitle:FlxText;
		private var txtMenuHeader:FlxText ;
		private var _b:FlxButton ;
		private var arMenuOptions:Array = new Array("New Pilot","Learn to Play","Do a Barrel Roll");
		
		
		[Embed(source="/assets/testing/cursor.png")] private var ImgCursor:Class;
		
		override public function MenuState():void
		{
			txtTitle = new FlxText(FlxG.width/2-50,FlxG.height/2-50,200,"Drifting in the Stellar Winds");
			txtTitle.setFormat(null,12,0x0066cc); this.add(txtTitle);
			var b:FlxButton ;
			var t1:FlxText ; var t2:FlxText;
			for(var i:int = 0; i<arMenuOptions.length; i++){
				//this.add((new FlxSprite(FlxG.width/2-50,FlxG.height/2+(15*i))).createGraphic(106,19,0xff131c1b));
				//this.add(arMenuOptions[i]);
				if(i == 0){
					_b = new FlxButton(FlxG.width/2-50,FlxG.height/2+(15*i),newPilot); }
				else { _b = new FlxButton(FlxG.width/2-50,FlxG.height/2+(15*i),fakeFlash); }
				_b.loadGraphic((new FlxSprite()).createGraphic(104,15,0x00000039),(new FlxSprite()).createGraphic(104,15,0x660066ff));
				t1 = new FlxText(25,1,100,arMenuOptions[i] as String);
				t1.color = 0x0099ff;
				t2 = t1; t2.color = 0x00ffff ;
				_b.loadText(t1,t2);
				add(_b);
			}
			//this.add(new FlxText(100,(FlxG.height/2),200,"New Pilot")) as FlxText;
			//this.add(new FlxText(100,(FlxG.height/2+15),200,"Learn to Play")) as FlxText;
			//this.add(new FlxText(100,(FlxG.height/2+30),200,"Do a Barrel Roll")) as FlxText;
			
			FlxG.showCursor(ImgCursor);

		}
		
		private function newPilot():void
		{
			FlxG.flash(0xff003366, 0.75);
            FlxG.fade(0xff0066cc, 1, onFade);
		}
		
		private function fakeFlash():void
		{
			FlxG.flash(0xff001122,10);
		}
		private function doNothing():void
		{
			
		}
		
		private function onFade():void
      	{
      		FlxG.switchState(PlayState);
      	}

		private function color_txt( intTxt:int ):void
		{
			arMenuOptions[intTxt].color = 0xffffff ;
		}
		
		override public function update():void
              {
         
                  super.update();
              }

	}
	
}