//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - WireFrameProtocol

@protocol ___VARIABLE_viperModuleName___WireframeProtocol <NSObject>

@end

#pragma mark - PresenterProtocol

@protocol ___VARIABLE_viperModuleName___PresenterProtocol <NSObject>

@end

#pragma mark - InteractorProtocol

@protocol ___VARIABLE_viperModuleName___InteractorOutputProtocol <NSObject>

/** Interactor -> Presenter */

@end

@protocol ___VARIABLE_viperModuleName___InteractorInputProtocol <NSObject>

- (void)setPresenter:(id<___VARIABLE_viperModuleName___InteractorOutputProtocol>)presenter;
- (id<___VARIABLE_viperModuleName___InteractorOutputProtocol>)getPresenter;

/** Presenter -> Interactor */

@end

#pragma mark - ViewProtocol

@protocol ___VARIABLE_viperModuleName___ViewProtocol <NSObject>

/** Presenter -> ViewController */

@end
