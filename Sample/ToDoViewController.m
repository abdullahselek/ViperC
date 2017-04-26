//
//  ToDoViewController.m
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "ToDoViewController.h"

@implementation ToDoViewController

- (void)viewDidLoad {
	[super viewDidLoad];
}

#pragma mark - ViewProtocol

- (void)setPresenter:(id<ToDoPresenterProtocol>)protocol {
	self.presenter = protocol;
}

- (id<ToDoPresenterProtocol>)getPresenterProtocol {
	return self.presenter;
}

#pragma mark - UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end
