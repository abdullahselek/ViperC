//
//  ToDoPresenter.m
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//
 
#import "ToDoPresenter.h"

@implementation ToDoPresenter

- (instancetype)initWithInterface:(id<ToDoViewProtocol>)interface
					   interactor:(id<ToDoInteractorProtocol>)interactor
					   	   router:(id<ToDoWireframeProtocol>)router {
    if (self = [super init]) {
        self.view = interface;
        self.interactor = interactor;
        self.router = router;
        [self.interactor setPresenter:self];
    }
    return self;
}

@end
