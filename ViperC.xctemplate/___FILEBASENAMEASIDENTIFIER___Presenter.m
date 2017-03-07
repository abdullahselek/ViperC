//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___FILEBASENAMEASIDENTIFIER___Presenter.h"
 
@implementation ___FILEBASENAMEASIDENTIFIER___Presenter
 
@end

- (instancetype)initWithInterface:(___FILEBASENAMEASIDENTIFIER___ViewProtocol)interface
					   interactor:(___FILEBASENAMEASIDENTIFIER___InteractorProtocol)interactor
					   	   router:(___FILEBASENAMEASIDENTIFIER___WireframeProtocol)router {
					   	   	if (self = [super init]) {
					   	   		self.view = interface;
					   	   		self.interactor = interactor;
					   	   		self.router = router;
					   	   		[self.interactor setPresenter:self];
					   	   	}
}