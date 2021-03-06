//
//  ViewControllerSettings.m
//  Suggests
//
//  Created by Victoria Sainter on 07/05/2015.
//  Copyright (c) 2015 Tesco. All rights reserved.
//

#import "ViewControllerSettings.h"

@interface ViewControllerSettings ()

@end

@implementation ViewControllerSettings

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.marSettings.count;
    NSLog(@"self mar settings count %lu", (unsigned long)self.marSettings.count);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    cell.textLabel.text = self.marSettings[indexPath.row];
    NSLog(@"cell text label %@", cell.textLabel.text);
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.marSettings = [[NSMutableArray alloc] initWithObjects:@"Connections", @"Profile", @"Help", @"Terms of use", @"Logout", nil];
    NSLog(@"marsettings, %@", self.marSettings);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

