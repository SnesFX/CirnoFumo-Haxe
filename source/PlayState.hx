package;

import openfl.display.BitmapData;
import openfl.display.MovieClip;
import openfl.Assets;
import openfl.display.Sprite;
import openfl.events.Event;

class PlayState extends Sprite {
    private var gif: MovieClip;
    
    public function new() {
        super();

        var bitmapData: BitmapData = Assets.getBitmapData("assets/images/cirnofumo.gif");
        
        gif = new MovieClip(bitmapData);
        addChild(gif);
        
        gif.addEventListener(Event.COMPLETE, onGifComplete);
    }
    
    private function onGifComplete(event: Event): Void {
        gif.play();
    }
}
