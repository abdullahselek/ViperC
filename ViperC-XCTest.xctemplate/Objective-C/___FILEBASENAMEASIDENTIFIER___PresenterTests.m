//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "___VARIABLE_viperModuleName___Interactor.h"
#import "___VARIABLE_viperModuleName___ViewController.h"
#import "___VARIABLE_viperModuleName___Presenter.h"
#import "___VARIABLE_viperModuleName___Router.h"

@interface ___VARIABLE_viperModuleName___PresenterTests : XCTestCase

@property (nonatomic) ___VARIABLE_viperModuleName___ViewController *view;
@property (nonatomic) ___VARIABLE_viperModuleName___Interactor *interactor;
@property (nonatomic) ___VARIABLE_viperModuleName___Presenter *presenter;

@end

@implementation ___VARIABLE_viperModuleName___PresenterTests

- (void)setUp
{
    [super setUp];
    ___VARIABLE_viperModuleName___Router *router = [[___VARIABLE_viperModuleName___Router alloc] init];
    self.view = (___VARIABLE_viperModuleName___ViewController *) [___VARIABLE_viperModuleName___Router createModule];
    self.interactor = [[___VARIABLE_viperModuleName___Interactor alloc] init];
    self.presenter = [[___VARIABLE_viperModuleName___Presenter alloc] initWithInterface:view interactor:interactor router:router];
    self.view.presenter = presenter;
    self.interactor.output = presenter;
}

- (void)tearDown
{
    self.presenter = nil;
    self.interactor = nil;
    self.view = nil;
    [super tearDown];
}

@end
