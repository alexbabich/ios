//
//  TableCell.h
//  test
//
//  Created by alex-babich on 27.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *count;
@end
