//
//  ThirdViewController.m
//  test
//
//  Created by alex-babich on 27.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

@synthesize testLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)gotoSecond:(id)sender {
    UIStoryboard *mainStoryboeard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [mainStoryboeard instantiateViewControllerWithIdentifier:@"SecondScene"];
    [self presentViewController:vc animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
