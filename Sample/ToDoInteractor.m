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

- (void)setOutput:(id<ToDoInteractorOutputProtocol>)output
{
    _output = output;
}

- (id<ToDoInteractorOutputProtocol>)getOutputProtocol
{
    return self.output;
}

- (void)addToDoItem:(ToDoItem *)item
{
    [self.output sendAddedItem:item];
}

@end
