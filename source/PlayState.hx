package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.system.FlxSound;
import flixel.util.FlxCollision;
import flixel.util.FlxColor;
import Paths;

class PlayState extends FlxState
{
    override public function create()
    {
        super.create();

        var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
        text.screenCenter();
        add(text);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}