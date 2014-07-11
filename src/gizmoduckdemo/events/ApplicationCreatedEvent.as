package gizmoduckdemo.events
{
	import flash.events.Event;
	
	public class ApplicationCreatedEvent extends Event
	{
		public static const APPLICATION_CREATED:String = "application-created-event";
		
		public var data:Object;
		
		public function ApplicationCreatedEvent(data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.data = data;
			super(APPLICATION_CREATED, bubbles, cancelable);
		}
	}
}