//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "___VARIABLE_viperModuleName___Router.h"

@interface ___VARIABLE_viperModuleName___RouterTests : XCTestCase

@end

@implementation ___VARIABLE_viperModuleName___RouterTests

- (void)testCreateModule
{
    UIViewController *viewController = [___VARIABLE_viperModuleName___Router createModule];
    XCTAssertNotNil(viewController);
}

@end
