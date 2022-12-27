package objects;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxTypedSpriteGroup;

using flixel.util.FlxSpriteUtil;

class Ornament extends FlxSprite
{
	var ornaments:FlxTypedSpriteGroup<FlxSprite>;

	public var ornamentColor(default, set):String = '';

	public function new(daColor:String = 'white')
	{
		set_ornamentColor(this.ornamentColor = daColor);

		ornaments = new FlxTypedSpriteGroup<FlxSprite>();

		if (ornaments != null)
		{
			ornaments.add(this);
		}

		width = 380;
		height = 450;

		super();
	}

	inline private function set_ornamentColor(v:String){
		switch(v.toLowerCase()){
			final target = 'ornaments/';
			case 'yellow':
				target += 'yellow';
			case 'aqua':
				target += 'aqua';
			case 'blue':
				target += 'blue';
			case 'cyan':
				target += 'cyan';
			case 'gold':
				target += 'gold';
			case 'green':
				target += 'green';
			case 'indigo':
				target += 'indigo';
			case 'lime':
				target += 'lime';
			case 'magenta':
				target += 'magenta';
			case 'mint':
				target += 'mint';
			case 'orange':
				target += 'orange';
			case 'pink':
				target += 'pink';
			case 'purple':
				target += 'purple';
			case 'red':
				target += 'red';
			case 'rose':
				target += 'rose';
			case 'scarlet':
				target += 'scarlet';
			case 'teal':
				target += 'teal';
			case 'white':
				target += 'white';
			default:
				trace('Error occured loading colors.');
				// target += 'white';																	
		}
		loadGraphic(Paths.image(target));
		updateHitbox();

		return ornamentColor = v;
	}

	override function destroy(){
		ornamentColor = null;
		ornaments = null;

		super.destroy();
	}
}
