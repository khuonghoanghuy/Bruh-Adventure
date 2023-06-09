package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class GameoverSubState extends MainSubState
{
	var text:FlxText;

	public function new()
	{
		super();

		MainSprite.mouseImg();

		var bg:FlxSprite = new FlxSprite();
		bg.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0.65;
		bg.scrollFactor.set();
		add(bg);

		text = new FlxText(0, 0, 0, "- YOU LOST -
            \nPress Enter or R to restart\nPress Esc to return", 16);
		text.screenCenter();
		text.alignment = CENTER;
		text.scrollFactor.set();
		add(text);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyJustPressed([ENTER, R]))
		{
			FlxG.resetState();
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			changeState(new MenuSelectLevel());
		}
	}
}
