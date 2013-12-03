//
//  urlhandler_API.m
//  ForgeTemplate
//
//  Created by Connor Dunn on 06/09/2012.
//  Copyright (c) 2012 Trigger Corp. All rights reserved.
//

#import "urlhandler_API.h"

extern NSString *urlLoaded;

@implementation urlhandler_API

+ (void)urlLoaded:(ForgeTask*)task {
	if (urlLoaded != nil) {
		[[ForgeApp sharedApp] event:@"urlhandler.urlLoaded" withParam:[NSDictionary dictionaryWithObjectsAndKeys:urlLoaded, @"url", nil]];
	}
}

@end
