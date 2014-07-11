package gizmoduckdemo.themes
{
	import feathers.themes.MetalWorksMobileTheme;
	
	import starling.display.DisplayObjectContainer;
	
	public class GizmoDuckDemoTheme extends MetalWorksMobileTheme
	{
		public function GizmoDuckDemoTheme(container:DisplayObjectContainer=null)
		{
			super(container);
		}
		
		override protected function initializeScale():void
		{
			super.initializeScale();
			
			this.scale = 0.5;
		}
	}
}