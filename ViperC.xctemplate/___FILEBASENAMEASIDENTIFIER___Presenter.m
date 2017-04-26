//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___FILEBASENAMEASIDENTIFIER___Presenter.h"

@implementation ___FILEBASENAMEASIDENTIFIER___Presenter

- (instancetype)initWithInterface:(id<___FILEBASENAMEASIDENTIFIER___ViewProtocol>)interface
					   interactor:(id<___FILEBASENAMEASIDENTIFIER___InteractorProtocol>)interactor
					   	   router:(id<___FILEBASENAMEASIDENTIFIER___WireframeProtocol>)router {
    if (self = [super init]) {
        self.view = interface;
        self.interactor = interactor;
        self.router = router;
        self.interactor.presenter = self;
    }
    return self;
}

@end