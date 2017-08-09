//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import "___FILEBASENAMEASIDENTIFIER___ViewController.h"
#import "___FILEBASENAMEASIDENTIFIER___Router.h"

QuickSpecBegin(___FILEBASENAMEASIDENTIFIER___ViewControllerTests)

describe(@"___FILEBASENAMEASIDENTIFIER___ViewController Tests", ^{
    describe(@"+[___FILEBASENAMEASIDENTIFIER___Router createModule]", ^{
        __block ___FILEBASENAMEASIDENTIFIER___ViewController *view;

        beforeSuite(^{
            view = (___FILEBASENAMEASIDENTIFIER___ViewController *) [___FILEBASENAMEASIDENTIFIER___Router createModule];
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
