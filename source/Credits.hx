package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;


		#if windows
import Discord.DiscordClient;
#end

class Credits extends MusicBeatState
{
	override public function create()
	{
	super.create();

	FlxG.sound.playMusic(Paths.music('Credits'));
	
	 var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
	 add(bg);

	 	var text:FlxText;
	text = new FlxText(500, 0, 0, "CREDITS", 64);
	text.setFormat("VCR OSD Mono", 64, FlxColor.fromRGB(200, 200, 200), CENTER);
		text.borderColor = FlxColor.BLACK;
		text.borderSize = 3;
		text.borderStyle = FlxTextBorderStyle.OUTLINE;

		
		 #if windows
		 // Updating Discord Rich Presence
		 DiscordClient.changePresence("Doin your mom :troll:", null);
		 #end
		
	 	var Credits:FlxSprite;
			 var Credits:FlxSprite = new FlxSprite().loadGraphic(Paths.image('CreditsText'));
			 Credits.scale.set(0.5, 0.5);
		Credits.screenCenter();
			 add(Credits);


		
	add(text);
	 	}

		override function update(elapsed:Float)
	{
	if (FlxG.keys.pressed.ENTER)
		{
		FlxG.switchState(new MainMenuState());
		}
		}

}
