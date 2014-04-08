//------------------------------------------------------------------------------
//  Copyright (c) 2009-2013 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.gizmoduck.bundles.mvcs
{
	import robotlegs.gizmoduck.extensions.contextView.ContextViewExtension;
	import robotlegs.gizmoduck.extensions.contextView.ContextViewListenerConfig;
	import robotlegs.gizmoduck.extensions.contextView.StageSyncExtension;
	import robotlegs.gizmoduck.extensions.mediatorMap.MediatorMapExtension;
	import robotlegs.gizmoduck.extensions.modularity.ModularityExtension;
	import robotlegs.gizmoduck.extensions.starlingEventMap.StarlingEventMapExtension;
	import robotlegs.gizmoduck.extensions.viewManager.StageCrawlerExtension;
	import robotlegs.gizmoduck.extensions.viewManager.StageObserverExtension;
	import robotlegs.gizmoduck.extensions.viewManager.ViewManagerExtension;
	import robotlegs.gizmoduck.extensions.viewProcessorMap.ViewProcessorMapExtension;
	
	import robotlegs.bender.extensions.directCommandMap.DirectCommandMapExtension;
	import robotlegs.bender.extensions.enhancedLogging.InjectableLoggerExtension;
	import robotlegs.bender.extensions.enhancedLogging.TraceLoggingExtension;
	import robotlegs.bender.extensions.eventCommandMap.EventCommandMapExtension;
	import robotlegs.bender.extensions.eventDispatcher.EventDispatcherExtension;
	import robotlegs.bender.extensions.localEventMap.LocalEventMapExtension;
	import robotlegs.bender.extensions.vigilance.VigilanceExtension;
	import robotlegs.bender.framework.api.IBundle;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.api.LogLevel;

	/**
	 * For that Classic Robotlegs flavour
	 *
	 * <p>This bundle installs a number of extensions commonly used
	 * in typical Robotlegs applications and modules.</p>
	 */
	public class MVCSBundle implements IBundle
	{

		/*============================================================================*/
		/* Public Functions                                                           */
		/*============================================================================*/

		/**
		 * @inheritDoc
		 */
		public function extend(context:IContext):void
		{
			context.logLevel = LogLevel.DEBUG;

			context.install(
				TraceLoggingExtension,
				VigilanceExtension, 
				InjectableLoggerExtension,
				ContextViewExtension,
				EventDispatcherExtension,
				ModularityExtension,
				DirectCommandMapExtension,
				EventCommandMapExtension,
				LocalEventMapExtension,
				StarlingEventMapExtension,
				ViewManagerExtension,
				StageObserverExtension,
				MediatorMapExtension,
				ViewProcessorMapExtension,
				StageCrawlerExtension,
				StageSyncExtension
			);

			context.configure(ContextViewListenerConfig);
		}
	}
}