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
    public var WIPText:FlxText;

    public var snow:Snow;

    override public function create()
    {
        openfl.system.System.gc();

        super.create();

        var bg:FlxSprite = new FlxSprite(-80).loadGraphic(Paths.image('background'));
		bg.scrollFactor.x = 0;
		bg.scrollFactor.y = 0.18;
		bg.setGraphicSize(Std.int(bg.width * 1.1));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = true;
		add(bg);

        WIPText = new FlxText(0, 0, FlxG.width, "WORK IN PROGRESS", 32);
		WIPText.setFormat(Paths.font("vcr.ttf"), 54, FlxColor.WHITE, FlxTextAlign.CENTER,FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);

		add(WIPText);

        if (snow != null){
            add(snow);
        }
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ESCAPE)
	    {
		    FlxG.switchState(new MainMenuState());
	    }
    }

    // should make some objects null to help garbage collection
    override function destroy(){
        super.destroy();
        snow = null;
    }
}