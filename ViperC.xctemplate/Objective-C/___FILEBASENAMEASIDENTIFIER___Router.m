//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___VARIABLE_viperModuleName___Router.h"
#import "___VARIABLE_viperModuleName___ViewController.h"
#import "___VARIABLE_viperModuleName___Interactor.h"
#import "___VARIABLE_viperModuleName___Presenter.h"
 
@implementation ___VARIABLE_viperModuleName___Router

+ (UIViewController *)createModule
{
    NSString *viewName = NSStringFromClass([___VARIABLE_viperModuleName___ViewController class]);
    ___VARIABLE_viperModuleName___ViewController *viewController = [[___VARIABLE_viperModuleName___ViewController alloc] initWithNibName:viewName bundle:nil];
    ___VARIABLE_viperModuleName___Interactor *interactor = [[___VARIABLE_viperModuleName___Interactor alloc] init];
    ___VARIABLE_viperModuleName___Router *router = [[___VARIABLE_viperModuleName___Router alloc] init];
    ___VARIABLE_viperModuleName___Presenter *presenter = [[___VARIABLE_viperModuleName___Presenter alloc] initWithInterface:viewController interactor:interactor router:router];
    viewController.presenter = presenter;
    router.viewController = viewController;
    return viewController;
}
 
@end
