package gizmoduckdemo.mediators.application
{
	import feathers.controls.ScreenNavigatorItem;
	
	import gizmoduckdemo.events.ApplicationCreatedEvent;
	import gizmoduckdemo.events.ChangeScreenEvent;
	import gizmoduckdemo.views.application.ApplicationView;
	import gizmoduckdemo.views.screens.HomeScreenView;
	import gizmoduckdemo.views.screens.Screen1View;
	
	import robotlegs.bender.framework.api.ILogger;
	import robotlegs.gizmoduck.bundles.mvcs.Mediator;
	
	public class ApplicationViewMediator extends Mediator
	{
		[Inject]
		public var logger:ILogger;
		
		[Inject]
		public var view:ApplicationView;
		
		private var _time:Number = new Date().getTime();
		
		override public function initialize():void
		{
			addContextListener(ChangeScreenEvent.CHANGE_SCREEN, changeScreenHandler, ChangeScreenEvent);
			
			dispatch(new ApplicationCreatedEvent());
			
			view.navigator.addScreen("home", new ScreenNavigatorItem(HomeScreenView));
			view.navigator.addScreen("screen1", new ScreenNavigatorItem(Screen1View));
			
			dispatch(new ChangeScreenEvent({ screen : "home" }));
		}
		
		private function changeScreenHandler(event:ChangeScreenEvent):void
		{
			view.navigator.showScreen(event.data.screen);
		}
	}
}