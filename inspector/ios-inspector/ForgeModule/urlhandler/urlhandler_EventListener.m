//
//  urlhandler_EventListener.m
//  ForgeTemplate
//
//  Created by Connor Dunn on 06/09/2012.
//  Copyright (c) 2012 Trigger Corp. All rights reserved.
//

#import "urlhandler_EventListener.h"

NSString *urlLoaded = nil;

@implementation urlhandler_EventListener

+ (NSNumber*)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
	
	[[ForgeApp sharedApp] event:@"urlhandler.urlLoaded" withParam:[NSDictionary dictionaryWithObjectsAndKeys:[url absoluteString], @"url", nil]];
	
	urlLoaded = [url absoluteString];
	
	// TODO: Return yes for urls specified in the urlhandler config
	return nil;
}

+ (NSNumber *)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	if ([launchOptions objectForKey:UIApplicationLaunchOptionsURLKey]) {
		return @YES;
	}
	return nil;
}

@end
