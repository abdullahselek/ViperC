//
//  ToDoPresenter.h
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoProtocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoPresenter: NSObject<ToDoPresenterProtocol>

@property (nonatomic, weak, nullable) id<ToDoViewProtocol> view;
@property (nonatomic, weak) id<ToDoInteractorProtocol> interactor;
@property (nonatomic, weak) id<ToDoWireframeProtocol> router;

- (instancetype)initWithInterface:(id<ToDoViewProtocol>)interface
                       interactor:(id<ToDoInteractorProtocol>)interactor
                           router:(id<ToDoWireframeProtocol>)router;

@end

NS_ASSUME_NONNULL_END