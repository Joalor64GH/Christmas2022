package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;
import haxe.Log;
import lime.app.Application;
import util.Menu;
import states.*;

class MainMenuState extends FlxState
{
	var substateColor:FlxColor;

	override public function create()
	{
		substateColor = new FlxColor();

		// Create menu
		Menu.title = "The Christmas Game";
		Menu.options = ['Play', 'How it Works', 'Exit'];
		Menu.includeExitBtn = false;
		Menu.callback = (option:MenuSelection) ->
		{
			trace('Epic menu option ${option}');
			// Option check
			switch (option.id)
			{
				case 0:
					trace('Selected play');
					FlxG.switchState(new PlayState());
				case 1:
					// trace('How it Works');
					// FlxG.switchState(new InstructionsState());

				case 2:
					trace('Exit');
					#if sys // this works on all sys platforms bruh
					Sys.exit(0);
					#else
					openfl.system.System.exit(0);
					#end
				default:
					trace('something is fucked');
			}
		}
		// Open menu
		FlxG.switchState(new Menu(substateColor.setRGB(0, 0, 0, 125)));

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
