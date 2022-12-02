package objects;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxTypedSpriteGroup;

using flixel.util.FlxSpriteUtil;

class Ornament extends FlxSprite
{
	var ornaments:FlxTypedSpriteGroup<FlxSprite>;

	public function new()
	{
		public static inline final COLORS:Array<String> = [
			"yellow", "aqua", "blue", "cyan", "gold", "green", "indigo", "lime", "magenta", "mint", "orange", "pink",
			"purple", "red", "rose", "scarlet", "teal", "white"
		];

                loadGraphic(Paths.image('ornaments/$COLORS'));

		ornaments = new FlxTypedSpriteGroup<FlxSprite>();

		if (ornaments != null)
		{
			ornaments.add(this);
		}
	}
}
