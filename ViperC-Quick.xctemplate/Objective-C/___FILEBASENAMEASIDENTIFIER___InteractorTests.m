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

QuickSpecBegin(___FILEBASENAMEASIDENTIFIER___InteractorTests)

describe(@"___FILEBASENAMEASIDENTIFIER___Interactor Tests", ^{
    __block ___FILEBASENAMEASIDENTIFIER___ViewController *view;
    ___FILEBASENAMEASIDENTIFIER___Interactor *interactor = [[___FILEBASENAMEASIDENTIFIER___Interactor alloc] init];
    __block ___FILEBASENAMEASIDENTIFIER___Presenter *presenter;

    beforeSuite(^{
        ___FILEBASENAMEASIDENTIFIER___Router *router = [[___FILEBASENAMEASIDENTIFIER___Router alloc] init];
        view = (___FILEBASENAMEASIDENTIFIER___ViewController *) [___FILEBASENAMEASIDENTIFIER___Router createModule];
        presenter = [[___FILEBASENAMEASIDENTIFIER___Presenter alloc] initWithInterface:view interactor:interactor router:router];
        view.presenter = presenter;
        interactor.output = presenter;
    });
});


QuickSpecEnd
