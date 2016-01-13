//
//  ProductLists.h
//  test
//
//  Created by alex-babich on 11.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductLists : UITableViewController <UITableViewDelegate,UITableViewDataSource>


@property(weak,nonatomic) NSArray *arrayOfArrays;
@end
