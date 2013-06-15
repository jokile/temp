//
//  main.m
//  obj_c_project
//
//  Created by Александр on 14.06.13.
//  Copyright (c) 2013 Александр. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITunesFinder.h"

//============================================================================

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSNetServiceBrowser *browser = [[NSNetServiceBrowser alloc] init];
        ITunesFinder *finder = [[ITunesFinder alloc] init];
        
        if ([finder respondsToSelector:@selector(init)])
        {
            NSLog(@"yes!");
        }
        
        [browser setDelegate:finder];
        [browser searchForServicesOfType: @"_daap._tcp" inDomain: @"local."];
        
        NSLog(@"Начинаю поиск:");
        [[NSRunLoop currentRunLoop] run];
    }
    
    return 0;
}