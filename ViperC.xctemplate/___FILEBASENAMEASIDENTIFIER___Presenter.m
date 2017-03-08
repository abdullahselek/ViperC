//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___FILEBASENAMEASIDENTIFIER___Presenter.h"

@implementation LoginPresenter

- (instancetype)initWithInterface:(id<LoginViewProtocol>)interface
					   interactor:(id<LoginInteractorProtocol>)interactor
					   	   router:(id<LoginWireframeProtocol>)router {
    if (self = [super init]) {
        self.view = interface;
        self.interactor = interactor;
        self.router = router;
        [self.interactor setPresenter:self];
    }
    return self;
}

@end