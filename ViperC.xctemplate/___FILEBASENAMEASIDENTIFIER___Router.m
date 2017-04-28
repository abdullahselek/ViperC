//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___FILEBASENAMEASIDENTIFIER___Router.h"
#import "___FILEBASENAMEASIDENTIFIER___ViewController.h"
#import "___FILEBASENAMEASIDENTIFIER___Interactor.h"
#import "___FILEBASENAMEASIDENTIFIER___Presenter.h"
 
@implementation ___FILEBASENAMEASIDENTIFIER___Router

+ (UIViewController *)createModule {
    NSString *viewName = NSStringFromClass([___FILEBASENAMEASIDENTIFIER___ViewController class]);
    ___FILEBASENAMEASIDENTIFIER___ViewController *viewController = [[___FILEBASENAMEASIDENTIFIER___ViewController alloc] initWithNibName:viewName bundle:nil];
    ___FILEBASENAMEASIDENTIFIER___Interactor *interactor = [[___FILEBASENAMEASIDENTIFIER___Interactor alloc] init];
    ___FILEBASENAMEASIDENTIFIER___Router *router = [[___FILEBASENAMEASIDENTIFIER___Router alloc] init];
    ___FILEBASENAMEASIDENTIFIER___Presenter *presenter = [[___FILEBASENAMEASIDENTIFIER___Presenter alloc] initWithInterface:viewController interactor:interactor router:router];
    viewController.presenter = presenter;
    router.viewController = viewController;
    return viewController;
}
 
@end