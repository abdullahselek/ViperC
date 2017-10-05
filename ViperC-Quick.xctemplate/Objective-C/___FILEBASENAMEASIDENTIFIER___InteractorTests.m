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

QuickSpecBegin(___VARIABLE_viperModuleName___InteractorTests)

describe(@"___VARIABLE_viperModuleName___Interactor Tests", ^{
    __block ___VARIABLE_viperModuleName___ViewController *view;
    ___VARIABLE_viperModuleName___Interactor *interactor = [[___VARIABLE_viperModuleName___Interactor alloc] init];
    __block ___VARIABLE_viperModuleName___Presenter *presenter;

    beforeSuite(^{
        ___VARIABLE_viperModuleName___Router *router = [[___VARIABLE_viperModuleName___Router alloc] init];
        view = (___VARIABLE_viperModuleName___ViewController *) [___VARIABLE_viperModuleName___Router createModule];
        presenter = [[___VARIABLE_viperModuleName___Presenter alloc] initWithInterface:view
                                                                            interactor:interactor
                                                                                router:router];
        view.presenter = presenter;
        interactor.output = presenter;
    });
});


QuickSpecEnd
