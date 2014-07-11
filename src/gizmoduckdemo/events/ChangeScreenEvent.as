package gizmoduckdemo.events
{
	import flash.events.Event;
	
	public class ChangeScreenEvent extends Event
	{
		public static const CHANGE_SCREEN:String = "change-screen-event";
		
		public var data:Object;
		
		public function ChangeScreenEvent(data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.data = data;
			super(CHANGE_SCREEN, bubbles, cancelable);
		}
	}
}