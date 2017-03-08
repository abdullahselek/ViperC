//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - WireFrameProtocol

@protocol LoginWireframeProtocol <NSObject>

@end

#pragma mark - PresenterProtocol

@protocol LoginPresenterProtocol <NSObject>

@end

#pragma mark - InteractorProtocol

@protocol LoginInteractorProtocol <NSObject>

- (void)setPresenter:(id<LoginPresenterProtocol>)protocol;
- (id<LoginPresenterProtocol>)getPresenterProtocol;

@end

#pragma mark - ViewProtocol

@protocol LoginViewProtocol <NSObject>

- (void)setPresenter:(id<LoginPresenterProtocol>)protocol;
- (id<LoginPresenterProtocol>)getPresenterProtocol;

@end