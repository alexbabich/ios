//
//  ProductLists.m
//  test
//
//  Created by alex-babich on 11.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import "ProductLists.h"
#import "TableViewCell.h"
#import "Product.h"
#import "CHCSVParser.h"

@interface ProductLists ()
@end

@implementation ProductLists

@synthesize arrayOfArrays;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *file = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"csv"];
    
    arrayOfArrays = [CHCSVParser parseCSVIntoArrayOfArraysFromFile:file
                                               withSeparatedCharacterString:@","
                                                       quoteCharacterString:@"\""];
    
    NSLog(@"%@",arrayOfArrays[0]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getLatestProducts
{
    NSString *file = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"csv"];
    
    arrayOfArrays = [CHCSVParser parseCSVIntoArrayOfArraysFromFile:file
                                               withSeparatedCharacterString:@","
                                                       quoteCharacterString:@"\""];
    
    //array with each line as objects, first object is the title of columns
    NSMutableArray *rowArray = [[NSMutableArray alloc]initWithArray:arrayOfArrays];
    
    //removes the title row, could keep it in and use them as label texts.
    [rowArray removeObjectAtIndex:0];
    
    NSLog(@"%lu",(unsigned long)[rowArray count]);
    
    //Add and initialize arrays here, this code is for *.csv files where you know the data you want.
    NSMutableArray *nameArray = [[NSMutableArray alloc]init];
    NSMutableArray *coutnArray = [[NSMutableArray alloc]init];
    NSMutableArray *priceArray = [[NSMutableArray alloc]init];
    
    for(int i = 0; i < [rowArray count]; i++){
        
        NSMutableArray *tempArray = [[NSMutableArray alloc]initWithArray:[[rowArray objectAtIndex:i] componentsSeparatedByString:@","]];
        
        [nameArray addObject:[tempArray objectAtIndex:0]];
        [priceArray addObject:[tempArray objectAtIndex:1]];
        [coutnArray addObject:[tempArray objectAtIndex:2]];
        
    }
    
    [self performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:NO];
}

- (void)reloadData
{
    // Reload table data
    [self.tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    Product *product = [arrayOfArrays objectAtIndex:indexPath.row];
    cell.productName.text = product.name;
    cell.productCount.text = [NSString stringWithFormat:@"$%@", [product.count stringValue]];
    cell.productPrice.text = [NSString stringWithFormat:@"$%@", [product.price stringValue]];
    
    return cell;
}

@end
