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

QuickSpecBegin(___VARIABLE_viperModuleName___RouterTests)

describe(@"___VARIABLE_viperModuleName___Router Tests", ^{
    describe(@"+[___VARIABLE_viperModuleName___Router createModule]", ^{
        __block ___VARIABLE_viperModuleName___ViewController *view;

        beforeEach(^{
            view = (___VARIABLE_viperModuleName___ViewController *) [___VARIABLE_viperModuleName___Router createModule];
        });

        it(@"should create orders module successfully", ^{
            expect(view).notTo.beNil();
            expect(view.presenter).notTo.beNil();
            expect(view.presenter.interactor).notTo.beNil();
        });
    });
});

QuickSpecEnd
