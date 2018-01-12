//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___VARIABLE_viperModuleName___Interactor.h"
 
@implementation ___VARIABLE_viperModuleName___Interactor

#pragma mark - InteractorProtocol

- (void)setOutput:(id<___VARIABLE_viperModuleName___InteractorOutputProtocol>)output
{
	_output = output;
}

- (id<___VARIABLE_viperModuleName___InteractorOutputProtocol>)getOutputProtocol
{
	return self.output;
}
 
@end