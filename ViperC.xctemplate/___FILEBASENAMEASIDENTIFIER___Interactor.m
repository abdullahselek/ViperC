//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___FILEBASENAMEASIDENTIFIER___Interactor.h"
 
@implementation ___FILEBASENAMEASIDENTIFIER___Interactor

#pragma mark - InteractorProtocol

- (void)setPresenter:(id<___FILEBASENAMEASIDENTIFIER___PresenterProtocol>)protocol{
	self.presenter = protocol;
}

- (id<___FILEBASENAMEASIDENTIFIER___PresenterProtocol>)getPresenterProtocol {
	return self.presenter;
}
 
@end