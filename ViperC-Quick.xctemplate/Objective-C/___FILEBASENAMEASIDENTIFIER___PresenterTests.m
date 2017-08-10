//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import "___FILEBASENAMEASIDENTIFIER___Interactor.h"
#import "___FILEBASENAMEASIDENTIFIER___ViewController.h"
#import "___FILEBASENAMEASIDENTIFIER___Presenter.h"
#import "___FILEBASENAMEASIDENTIFIER___Router.h"

QuickSpecBegin(___FILEBASENAMEASIDENTIFIER___PresenterTests)

describe(@"___FILEBASENAMEASIDENTIFIER___Presenter Tests", ^{
    describe(@"-[___FILEBASENAMEASIDENTIFIER___Presenter initWithInterface:interactor:router:]", ^{
        __block ___FILEBASENAMEASIDENTIFIER___Presenter *presenter;

        beforeEach(^{
            ___FILEBASENAMEASIDENTIFIER___ViewController *view = (___FILEBASENAMEASIDENTIFIER___ViewController *) [___FILEBASENAMEASIDENTIFIER___Router createModule];
            ___FILEBASENAMEASIDENTIFIER___Interactor *interactor = [[___FILEBASENAMEASIDENTIFIER___Interactor alloc] init];
            ___FILEBASENAMEASIDENTIFIER___Router *router = [[___FILEBASENAMEASIDENTIFIER___Router alloc] init];
            presenter = [[___FILEBASENAMEASIDENTIFIER___Presenter alloc] initWithInterface:view interactor:interactor router:router];
        });

        it(@"successfully initialises", ^{
            expect(presenter).notTo.beNil();
            expect(presenter.interactor).notTo.beNil();
        });
    });
});

QuickSpecEnd
