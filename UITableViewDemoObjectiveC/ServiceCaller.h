//
//  ServiceCaller.h
//  UITableViewDemoObjectiveC
//
//  Created by Miguel Cerra on 1/25/17.
//  Copyright © 2017 iHart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServiceCaller : NSObject

+(NSDictionary*)executeRequest;

+(Boolean)isOnline;

@end
