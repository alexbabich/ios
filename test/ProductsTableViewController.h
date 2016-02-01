//
//  ProductsTableViewController.h
//  test
//
//  Created by alex-babich on 12.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductsTableViewController : UITableViewController

@property(nonatomic, retain) NSArray* arrayOfArrays;

@property (nonatomic, strong) NSArray *productName;
@property (nonatomic, strong) NSArray *productPrice;
@property (nonatomic, strong) NSArray *productCount;
@property (nonatomic,retain) NSMutableArray *colA;
@property (nonatomic,retain) NSMutableArray *colB;
@property (nonatomic,retain) NSMutableArray *colC;

@end
