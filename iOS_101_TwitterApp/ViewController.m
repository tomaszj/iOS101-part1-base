//
//  ViewController.m
//  iOS_101_TwitterApp
//
//  Created by Tomasz Janeczko on 03/17/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController {
    __weak IBOutlet UITableView *_tableView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)refreshButtonTapped:(UIBarButtonItem *)sender {

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellID = @"MagicId";

    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:CellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellID];
    }

    cell.textLabel.text = [NSString stringWithFormat:@"Tweet %i", indexPath.row];

    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


@end