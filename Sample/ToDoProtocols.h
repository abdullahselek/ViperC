//
//  ToDoProtocols.h
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

#pragma mark - WireFrameProtocol

@protocol ToDoWireframeProtocol <NSObject>

@end

#pragma mark - PresenterProtocol

@protocol ToDoPresenterProtocol <NSObject>

@end

#pragma mark - InteractorProtocol

@protocol ToDoInteractorProtocol <NSObject>

- (void)setPresenter:(id<ToDoPresenterProtocol>)protocol;
- (id<ToDoPresenterProtocol>)getPresenterProtocol;

- (void)addToDoItem:(ToDoItem *)item;
- (void)removeToDoItem:(ToDoItem *)item;

@end

#pragma mark - ViewProtocol

@protocol ToDoViewProtocol <NSObject>

- (void)setPresenter:(id<ToDoPresenterProtocol>)protocol;
- (id<ToDoPresenterProtocol>)getPresenterProtocol;

- (void)addToDoItem:(ToDoItem *)item;
- (void)removeToDoItem:(ToDoItem *)item;

@end
