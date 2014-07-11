package gizmoduckdemo.configuration
{
	import gizmoduckdemo.mediators.application.ApplicationViewMediator;
	import gizmoduckdemo.mediators.screens.HomeScreenViewMediator;
	import gizmoduckdemo.mediators.screens.Screen1ViewMediator;
	import gizmoduckdemo.views.application.ApplicationView;
	import gizmoduckdemo.views.screens.HomeScreenView;
	import gizmoduckdemo.views.screens.Screen1View;
	
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	import robotlegs.gizmoduck.extensions.mediatorMap.api.IMediatorMap;
	
	public class GizmoDuckDemoConfiguration implements IConfig
	{
		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var commandMap:IEventCommandMap; 
		
		public function configure():void
		{
			mediatorMap.map(ApplicationView).toMediator(ApplicationViewMediator);
			mediatorMap.map(HomeScreenView).toMediator(HomeScreenViewMediator);
			mediatorMap.map(Screen1View).toMediator(Screen1ViewMediator);
		}
	}
}