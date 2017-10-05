//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import "___VARIABLE_viperModuleName___Interactor.h"
#import "___VARIABLE_viperModuleName___ViewController.h"
#import "___VARIABLE_viperModuleName___Presenter.h"
#import "___VARIABLE_viperModuleName___Router.h"

QuickSpecBegin(___VARIABLE_viperModuleName___PresenterTests)

describe(@"___VARIABLE_viperModuleName___Presenter Tests", ^{
    describe(@"-[___VARIABLE_viperModuleName___Presenter initWithInterface:interactor:router:]", ^{
        __block ___VARIABLE_viperModuleName___Presenter *presenter;

        beforeEach(^{
            ___VARIABLE_viperModuleName___ViewController *view = (___VARIABLE_viperModuleName___ViewController *) [___VARIABLE_viperModuleName___Router createModule];
            ___VARIABLE_viperModuleName___Interactor *interactor = [[___VARIABLE_viperModuleName___Interactor alloc] init];
            ___VARIABLE_viperModuleName___Router *router = [[___VARIABLE_viperModuleName___Router alloc] init];
            presenter = [[___VARIABLE_viperModuleName___Presenter alloc] initWithInterface:view
                                                                                interactor:interactor
                                                                                    router:router];
        });

        it(@"successfully initialises", ^{
            expect(presenter).notTo.beNil();
            expect(presenter.interactor).notTo.beNil();
        });
    });
});

QuickSpecEnd
