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

- (void)setOutput:(id<___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol>)output {
	_output = output;
}

- (id<___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol>)getOutputProtocol {
	return self.output;
}
 
@end