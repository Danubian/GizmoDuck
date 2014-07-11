package gizmoduckdemo.views.application
{
	import feathers.controls.LayoutGroup;
	import feathers.controls.ScreenNavigator;
	import feathers.motion.transitions.ScreenSlidingStackTransitionManager;
	
	import gizmoduckdemo.configuration.GizmoDuckDemoConfiguration;
	import gizmoduckdemo.themes.GizmoDuckDemoTheme;
	
	import robotlegs.bender.framework.impl.Context;
	import robotlegs.gizmoduck.bundles.mvcs.MVCSBundle;
	import robotlegs.gizmoduck.extensions.contextView.ContextView;
	
	import starling.animation.Transitions;
	
	public class ApplicationView extends LayoutGroup
	{
		private var _theme:GizmoDuckDemoTheme;
		
		private var _navigator:ScreenNavigator;
		
		public function get navigator():ScreenNavigator
		{
			return _navigator;
		}
		
		private var _transitionManager:ScreenSlidingStackTransitionManager;
		
		public function ApplicationView()
		{
			new Context().install(MVCSBundle).configure(GizmoDuckDemoConfiguration, new ContextView(this));
		} 

		override protected function initialize():void
		{
			_theme = new GizmoDuckDemoTheme();
			
			_navigator = new ScreenNavigator();
			addChild(_navigator);
			
			_transitionManager = new ScreenSlidingStackTransitionManager(_navigator);
			_transitionManager.duration = 0.4;
			_transitionManager.delay = 0.2;
			_transitionManager.ease = Transitions.EASE_OUT;
		}
	}
}