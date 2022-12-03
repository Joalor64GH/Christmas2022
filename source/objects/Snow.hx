package objects;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;

class Snow extends FlxSprite
{
    var snowFront:FlxBackdrop = new FlxBackdrop(Paths.image('snow'), 0.6, 0.6, true, true);
    var snowMiddle:FlxBackdrop = new FlxBackdrop(Paths.image('snow2'), 0.4, 0.4, true, true);
    var snowBack:FlxBackdrop = new FlxBackdrop(Paths.image('snow3'), 0.2, 0.2, true, true);

    public function new() {
        snowFront.velocity.set(0, -50);
        snowMiddle.velocity.set(0, -30);
        snowBack.velocity.set(0, -10);
    
        FlxG.state.add(snowFront);
        FlxG.state.add(snowMiddle);
        FlxG.state.add(snowBack);

        super();
    }

    // idk where to go from here
}