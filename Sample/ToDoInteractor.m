//
//  ToDoInteractor.m
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//
 
#import "ToDoInteractor.h"
#import "ToDoItem.h"
 
@implementation ToDoInteractor

#pragma mark - InteractorProtocol

- (void)setPresenter:(id<ToDoPresenterProtocol>)protocol{
	_presenter = protocol;
}

- (id<ToDoPresenterProtocol>)getPresenterProtocol {
	return self.presenter;
}

- (void)addToDoItem:(ToDoItem *)item {

}

- (void)removeToDoItem:(ToDoItem *)item {

}

@end
