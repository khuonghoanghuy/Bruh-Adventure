package items;

import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

// a item for chapter 2
// THIS IS AN ITEM FOR THE 2ND ADVENTURE!! NOT THE MAIN ONE!! THIS IS FOR THE UNDERGROUND ONE, SO DONT ADD IT UNTIL I SAY IT.
class Potion extends MainSprite
{
	// No, not set.
	public var potionType:String = '';

	public function new(x:Float, y:Float, color:FlxColor)
	{
		super(x, y);
		// loadGraphic(potion); // BLANK POTION. WITHOUT ANY COLORS EXCEPT BLACK (border) AND WHITE (in color)
		this.color = color; // no need to make more sprites for more potion colors.
	}

	override function kill()
	{
		// like if it wants to go
		FlxTween.tween(this, {y: y + 10}, 0.2, {ease: flixel.tweens.FlxEase.cubeOut});
		super.kill();
	}
}
