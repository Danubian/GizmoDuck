package gizmoduckdemo.mediators.screens
{
	import gizmoduckdemo.events.ChangeScreenEvent;
	import gizmoduckdemo.views.screens.Screen1View;
	
	import robotlegs.bender.framework.api.ILogger;
	import robotlegs.gizmoduck.bundles.mvcs.Mediator;
	
	import starling.events.Event;

	public class Screen1ViewMediator extends Mediator
	{
		[Inject]
		public var logger:ILogger;
		
		[Inject]
		public var view:Screen1View;
		
		override public function initialize():void
		{
			logger.debug("Screen1ViewMediator has been initialized.");
			
			addViewListener("gotoHomeClicked", function(event:Event):void {
				dispatch(new ChangeScreenEvent({ screen : 'home' }));
			});
		}
		
		override public function destroy():void
		{
			logger.debug("Screen1ViewMediator has been destroyed.");
		}
	}
}