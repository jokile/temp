//
//  NSCopying.h
//  obj_c_project
//
//  Created by Александр on 15.06.13.
//  Copyright (c) 2013 Александр. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NSCopying <NSObject>

-(id)copyWithZone:(NSZone *) _zone;

@end
