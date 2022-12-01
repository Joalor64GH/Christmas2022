package states;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.system.FlxSound;
import flixel.util.FlxCollision;
import flixel.util.FlxColor;
import Paths;
import objects.*;

class PlayState extends FlxState
{
    override public function create()
    {
        super.create();

        var bg:FlxSprite = new FlxSprite(-80).loadGraphic(Paths.image('background'));
		bg.scrollFactor.x = 0;
		bg.scrollFactor.y = 0.18;
		bg.setGraphicSize(Std.int(bg.width * 1.1));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = true;
		add(bg);

        var text = new flixel.text.FlxText(0, 0, 0, "Work In Progress", 64);
        text.screenCenter();
        add(text);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ESCAPE)
	{
		FlxG.switchState(new MainMenuState());
	}
    }
}