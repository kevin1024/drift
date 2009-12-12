package {
	import flash.display.Sprite;
	import org.flixel.*;
	import com.TitleState;
	import com.MenuState;

	[SWF(width = "800", height = "600", backgroundColor = "#000000")]
	
	[Frame(factoryClass="Preloader")] //Tells flixel to use the default preloader
	public class Drifting extends FlxGame
	{
		public function Drifting()
		{
			//super(400,300,TitleState,2,0xff000000,false,0xffffffff);
			super(400,300,TitleState,2);
			help("Jump","Shoot","Nothing");
		}
	}
}
