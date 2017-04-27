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

@protocol ToDoInteractorOutputProtocol <NSObject>

- (void)sendAddedItem:(ToDoItem *)item;

@end

@protocol ToDoInteractorInputProtocol <NSObject>

- (void)setOutput:(id<ToDoInteractorOutputProtocol>)output;
- (id<ToDoInteractorOutputProtocol>)getOutputProtocol;

- (void)addToDoItem:(ToDoItem *)item;

@end

#pragma mark - ViewProtocol

@protocol ToDoViewProtocol <NSObject>

- (void)showAddedItem:(ToDoItem *)item;

@end
