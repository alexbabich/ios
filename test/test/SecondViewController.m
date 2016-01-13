//
//  SecondViewController.m
//  test
//
//  Created by alex-babich on 11.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import "SecondViewController.h"
#import "CHCSVParser.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize firstRow;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *file = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"csv"];
    
    NSArray *arrayOfArrays = [CHCSVParser parseCSVIntoArrayOfArraysFromFile:file
                                             withSeparatedCharacterString:@","
                                                     quoteCharacterString:@"\""];
    
    NSLog(@"%@",arrayOfArrays[0]);
    
    firstRow.text = [NSString stringWithFormat:@"%@",arrayOfArrays[0][0]];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)gotoList:(id)sender {
    UIStoryboard *mainStoryboeard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [mainStoryboeard instantiateViewControllerWithIdentifier:@"listProduct"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
