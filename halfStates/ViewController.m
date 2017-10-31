//
//  ViewController.m
//  halfStates
//
//  Created by Brian Martinez on 10/30/17.
//  Copyright © 2017 Brian Martinez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *states;
@property (nonatomic, strong) NSArray *capitals;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.states = @[@"Alabama", @"Alaska",@"Arizona",@"Arkansas",@"California",@"Colorado",@"Connecticut",@"Delaware",@"Florida",@"Georgia",@"Hawaii",@"Idaho",@"Illinois", @"Indiana", @"Iowa",@"Kansas",@"Kentucky", @"Louisiana",@"Maine", @"Maryland", @"Massachusetts", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri", @"Montana"];
    
    self.capitals = @[@"Montgomery", @"Juneau", @"Phoenix", @"Little Rock", @"Sacramento", @"Denver", @"Hartford", @"Dover", @"Tallahassee", @"Atlanta", @"Honolulu", @"Boise", @"Springfield", @"Indianapolis", @"Des Moines", @"Topeka", @"Frankfurt", @"Baton Rouge", @"Augusta", @"Annapolis", @"Boston", @"Lansing", @"St. Paul", @"Jackson", @"Jefferson City", @"Helena" ];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.states count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //define the type of table cell
    static NSString* simpleTableIdentifier = @"SimpleTableIdentifier";
    //ask the table to resuse previously used data
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:simpleTableIdentifier];
    }

    cell.textLabel.text = self.states[indexPath.row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:24];
    cell.detailTextLabel.text = self.capitals[indexPath.row];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:20];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *rowValue1 = self.states[indexPath.row];
    NSString *rowValue2 = self.capitals[indexPath.row];
    NSString *message = [[NSString alloc]initWithFormat:@"You selected %@; its capital is %@", rowValue1, rowValue2];
    NSLog(@"%@", message);
    //UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"ROW SELECTED" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
