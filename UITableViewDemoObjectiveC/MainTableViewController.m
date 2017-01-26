//
//  ViewController.m
//  UITableViewDemoObjectiveC
//
//  Created by Hardik Trivedi on 18/07/2016.
//  Copyright © 2016 iHart. All rights reserved.
//

#import "MainTableViewController.h"
#import "ViewController.h"
#import "ServiceCaller.h"

@interface MainTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation MainTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row : %ld", indexPath.row + 1];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Row Tap" message:[NSString stringWithFormat:@"Row : %ld selected", indexPath.row + 1] preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    */
    
    
    ViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:detail animated:YES completion:nil];
    
    
    
   
    
    
}

@end
