package gizmoduckdemo.views.screens
{
	import feathers.controls.Button;
	import feathers.controls.Header;
	import feathers.controls.LayoutGroup;
	import feathers.controls.Screen;
	import feathers.layout.VerticalLayout;
	
	import starling.events.Event;
	
	public class Screen1View extends Screen
	{
		private var _header:Header;
		private var _layoutGroup:LayoutGroup;
		
		override protected function initialize():void
		{
			super.initialize();
			
			_header = new Header();
			_header.title = "Screen1";
			addChild(_header);
			
			_layoutGroup = new LayoutGroup();
			_layoutGroup.layout = new VerticalLayout();
			(_layoutGroup.layout as VerticalLayout).horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			(_layoutGroup.layout as VerticalLayout).verticalAlign = VerticalLayout.VERTICAL_ALIGN_MIDDLE;
			addChild(_layoutGroup);
			
			var button:Button = new Button();
			button.label = "Goto Home";
			button.addEventListener(Event.TRIGGERED, function(event:Event):void {
				dispatchEventWith("gotoHomeClicked");
			});
			_layoutGroup.addChild(button);
		}
		
		override protected function draw():void
		{
			var sizeInvalid:Boolean = this.isInvalid(INVALIDATION_FLAG_SIZE);
			
			if (sizeInvalid) 
			{
				_header.width = stage.stageWidth;
				_layoutGroup.width = stage.stageWidth;
				_layoutGroup.y = _header.height;
				_layoutGroup.height = stage.stageHeight - _layoutGroup.y;
			}
			
			super.draw();
		}
	}
}