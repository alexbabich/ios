//
//  TableCell.m
//  test
//
//  Created by alex-babich on 27.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import "TableCell.h"

@implementation TableCell

@synthesize count = _count, name = _name, price = _price;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
