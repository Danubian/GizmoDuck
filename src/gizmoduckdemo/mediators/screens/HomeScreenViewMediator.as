package gizmoduckdemo.mediators.screens
{
	import gizmoduckdemo.events.ChangeScreenEvent;
	import gizmoduckdemo.views.screens.HomeScreenView;
	
	import robotlegs.bender.framework.api.ILogger;
	import robotlegs.gizmoduck.bundles.mvcs.Mediator;
	
	import starling.events.Event;
	
	public class HomeScreenViewMediator extends Mediator
	{
		[Inject]
		public var logger:ILogger;
		
		[Inject]
		public var view:HomeScreenView;
		
		override public function initialize():void
		{
			logger.debug("HomeScreenViewMediator has been initialized.");
			
			addViewListener("gotoScreen1Clicked", function(event:Event):void {
				dispatch(new ChangeScreenEvent({ screen : 'screen1' }));
			});
		}
		
		override public function destroy():void
		{
			logger.debug("HomeScreenViewMediator has been destroyed.");
		}
	}
}