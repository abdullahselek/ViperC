//
//  ToDoPresenter.h
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoProtocols.h"
#import "ToDoItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoPresenter : NSObject<ToDoInteractorOutputProtocol>

@property (nonatomic, weak, nullable) id<ToDoViewProtocol> view;
@property (nonatomic) id<ToDoInteractorInputProtocol> interactor;
@property (nonatomic, weak) id<ToDoWireframeProtocol> router;

- (instancetype)initWithInterface:(id<ToDoViewProtocol>)interface
                       interactor:(id<ToDoInteractorInputProtocol>)interactor
                           router:(id<ToDoWireframeProtocol>)router;
- (void)addToDoItem:(ToDoItem *)item;

@end

NS_ASSUME_NONNULL_END
