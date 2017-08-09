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

QuickSpecBegin(___FILEBASENAMEASIDENTIFIER___RouterTests)

describe(@"___FILEBASENAMEASIDENTIFIER___Router Tests", ^{
    describe(@"+[___FILEBASENAMEASIDENTIFIER___Router createModule]", ^{
        __block ___FILEBASENAMEASIDENTIFIER___ViewController *view;

        beforeEach(^{
            view = (___FILEBASENAMEASIDENTIFIER___ViewController *) [___FILEBASENAMEASIDENTIFIER___Router createModule];
        });

        it(@"should create orders module successfully", ^{
            expect(view).notTo.beNil();
            expect(view.presenter).notTo.beNil();
            expect(view.presenter.interactor).notTo.beNil();
        });
    });
});

QuickSpecEnd
