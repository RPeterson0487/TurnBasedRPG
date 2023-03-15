package;

import flixel.FlxG;
import flixel.util.FlxSave;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(320, 240, MenuState));

		var save = new FlxSave();
		save.bind("TurnBasedRPG");
		if (save.data.volume != null)
		{
			FlxG.sound.volume = save.data.volume;
		}
		save.close();
	}
}
