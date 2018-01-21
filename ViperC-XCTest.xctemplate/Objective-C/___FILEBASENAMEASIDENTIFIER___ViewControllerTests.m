//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "___VARIABLE_viperModuleName___ViewController.h"
#import "___VARIABLE_viperModuleName___Router.h"

@interface ___VARIABLE_viperModuleName___ViewControllerTests : XCTestCase

@end

@implementation ___VARIABLE_viperModuleName___ViewControllerTests

- (void)testInit
{
    ___VARIABLE_viperModuleName___ViewController *viewController = (___VARIABLE_viperModuleName___ViewController *) [___VARIABLE_viperModuleName___Router createModule];
    XCTAssertNotNil(viewController);
}

@end
