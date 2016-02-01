//
//  TableViewCell.h
//  test
//
//  Created by alex-babich on 11.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UILabel *productCount;
@property (weak, nonatomic) IBOutlet UILabel *productPrice;

@end
