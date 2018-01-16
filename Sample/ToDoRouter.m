//
//  ToDoRouter.m
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//
 
#import "ToDoRouter.h"
#import "ToDoViewController.h"
#import "ToDoInteractor.h"
#import "ToDoPresenter.h"
 
@implementation ToDoRouter

+ (UIViewController *)createModule
{
    NSString *viewName = NSStringFromClass([ToDoViewController class]);
    ToDoViewController *viewController = [[ToDoViewController alloc] initWithNibName:viewName bundle:nil];
    ToDoInteractor *interactor = [[ToDoInteractor alloc] init];
    ToDoRouter *router = [[ToDoRouter alloc] init];
    ToDoPresenter *presenter = [[ToDoPresenter alloc] initWithInterface:viewController interactor:interactor router:router];
    viewController.presenter = presenter;
    router.viewController = viewController;
    return viewController;
}
 
@end
