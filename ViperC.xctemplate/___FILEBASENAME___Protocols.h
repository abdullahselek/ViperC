//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - WireFrameProtocol

@protocol ___FILEBASENAMEASIDENTIFIER___WireframeProtocol <NSObject>

@end

#pragma mark - PresenterProtocol

@protocol ___FILEBASENAMEASIDENTIFIER___PresenterProtocol <NSObject>

@end

#pragma mark - InteractorProtocol

@protocol ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol <NSObject>

@end

@protocol ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol <NSObject>

- (void)setOutput:(id<___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol>)output;
- (id<___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol>)getOutputProtocol;

@end

#pragma mark - ViewProtocol

@protocol ___FILEBASENAMEASIDENTIFIER___ViewProtocol <NSObject>

@end