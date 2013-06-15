//
//  ITunesFinder.m
//  obj_c_project
//
//  Created by Александр on 15.06.13.
//  Copyright (c) 2013 Александр. All rights reserved.
//

#import "ITunesFinder.h"

@implementation ITunesFinder

-(void)newServiceBrowser:(NSNetServiceBrowser *) _browser
          didFindService:(NSNetService *) _service
              moreComing:(BOOL) moreComing
{
    [_service resolveWithTimeout:10];
    NSLog(@"Найден сервис %@", _service);
}

-(id)copyWithZone:(NSZone *) _zone
{
    ITunesFinder *finder = [[[self class] allocWithZone:_zone] init];
    return finder;
}


@end
