//
//  Product.h
//  test
//
//  Created by alex-babich on 11.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *count;
@property (strong, nonatomic) NSNumber *price;

@end
