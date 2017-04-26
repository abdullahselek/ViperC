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

@end