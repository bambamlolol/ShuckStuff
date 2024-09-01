import flixel.text.FlxText;

var lyricBG;
var lyricText;

// hey guys brandon here

function onCreate() {
	lyricBG = new FlxSprite().makeGraphic(100, 100, 0xff000000);
	lyricBG.screenCenter();
	lyricBG.cameras = [game.camHUD];
	lyricBG.visible = false;
	lyricBG.alpha = 0.85;
	add(lyricBG);

	lyricText = new FlxText(0, FlxG.height * 0.85, FlxG.width, "", 40);
	lyricText.font = "Arial";
	lyricText.alignment = "center";
	lyricText.cameras = [game.camHUD];
	add(lyricText);
}

function onEvent(e, V1, V2) {
	if (e == "lyric") {
		lyricText.text = V1;

		lyricBG.visible = lyricText.text != "";
		lyricBG.makeGraphic(lyricText.text.length * 22, lyricText.height, 0xff000000);
		lyricBG.screenCenter();
		lyricBG.y = lyricText.y;
	}
}
