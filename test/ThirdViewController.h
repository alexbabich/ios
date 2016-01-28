//
//  ThirdViewController.h
//  test
//
//  Created by alex-babich on 27.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController {

    __weak IBOutlet UIButton *goToSecond;
}
@property (weak, nonatomic) IBOutlet UIButton *goBack;
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end
