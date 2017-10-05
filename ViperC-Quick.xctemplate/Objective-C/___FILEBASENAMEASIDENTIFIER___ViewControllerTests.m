//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import "___VARIABLE_viperModuleName___ViewController.h"
#import "___VARIABLE_viperModuleName___Router.h"

QuickSpecBegin(___VARIABLE_viperModuleName___ViewControllerTests)

describe(@"___VARIABLE_viperModuleName___ViewController Tests", ^{
    describe(@"+[___VARIABLE_viperModuleName___Router createModule]", ^{
        __block ___VARIABLE_viperModuleName___ViewController *view;

        beforeSuite(^{
            view = (___VARIABLE_viperModuleName___ViewController *) [___VARIABLE_viperModuleName___Router createModule];
        });

        context(@"when created by router", ^{
            it(@"should succeed", ^{
                expect(view).notTo.beNil();
                expect(view.presenter).notTo.beNil();
            });
        });
    });
});

QuickSpecEnd
