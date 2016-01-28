//
//  ProductsTableViewController.m
//  test
//
//  Created by alex-babich on 12.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import "ProductsTableViewController.h"
#import "TableCell.h"
#import "CHCSVParser.h"

@interface ProductsTableViewController ()

@end

@implementation ProductsTableViewController

@synthesize arrayOfArrays, productCount = _productCount, productName = _productName, productPrice = _productPrice, colA = _colA, colB = _colB, colC = _colC;

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSString *file = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"csv"];
//    
//    arrayOfArrays = [CHCSVParser parseCSVIntoArrayOfArraysFromFile:file
//                                               withSeparatedCharacterString:@","
//                                                       quoteCharacterString:@"\""];
//    
//    NSLog(@"%@",arrayOfArrays[0]);
//    NSLog(@"%lu",(unsigned long)[arrayOfArrays count]);
    
    _colA = [NSMutableArray array];
    _colB = [NSMutableArray array];
    _colC = [NSMutableArray array];
    NSString *fileContents = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"csv"];
    
    arrayOfArrays = [CHCSVParser parseCSVIntoArrayOfArraysFromFile:fileContents
                                                   withSeparatedCharacterString:@""
                                                           quoteCharacterString:@""];
//                                                         quoteCharacterString:@"\""];
//                                                         "Apple iPod touch 5 32Gb\", \"8888\", \"5"
//                                                         quoteCharacterString:@""];
//                                                         "\"Apple iPod touch 5 32Gb\", \"8888\", \"5\""

    NSLog(@"arrayOfArrays = %@", arrayOfArrays[0]);
    
//    
//    NSArray* rows = [fileContents componentsSeparatedByString:@"\n"];
//            NSLog(@"rows = %@", rows);
    
    for (NSArray *row in arrayOfArrays){
        NSLog(@"row = %@", [row[0] componentsSeparatedByString:@","]);
//        NSArray* columns = [row componentsSeparatedByString:@","];
        [_colA addObject:row[0]];
        [_colB addObject:row[1]];
        [_colC addObject:row[2]];
    }
    
//    NSLog(@"%@", [arrayOfArrays[0] objectAtIndex:1]);
//    NSLog(@"%lu",(unsigned long)[_colA count]);
    self.productCount = [[NSArray alloc]
                     initWithObjects:@"Chevy",
                     @"BMW",
                     @"Toyota",
                     @"Volvo",
                     @"Smart", nil];
    
    self.productName = [[NSArray alloc]
                      initWithObjects:@"Volt",
                      @"Mini",
                      @"Venza",
                      @"S60",
                      @"Fortwo", nil];
    
    self.productPrice = [[NSArray alloc]
                      initWithObjects:@"12",
                      @"14",
                      @"2435",
                      @"634",
                      @"42", nil];
    
//    firstRow.text = [NSString stringWithFormat:@"%@",arrayOfArrays[0][0]];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    
    return [self.productCount count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"TableCell";
    
    TableCell *cell = (TableCell *)[tableView dequeueReusableCellWithIdentifier:@"TableCell"];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.name.text = [self.productName objectAtIndex:indexPath.row];
    cell.price.text = [self.productPrice objectAtIndex:indexPath.row];
    cell.count.text = [self.productCount objectAtIndex:indexPath.row];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
