//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "___FILEBASENAMEASIDENTIFIER___Protocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginPresenter: NSObject<LoginPresenterProtocol>

@property (nonatomic, weak, nullable) id<LoginViewProtocol> view;
@property (nonatomic, weak) id<LoginInteractorProtocol> interactor;
@property (nonatomic, weak) id<LoginWireframeProtocol> router;

- (instancetype)initWithInterface:(id<LoginViewProtocol>)interface
                       interactor:(id<LoginInteractorProtocol>)interactor
                           router:(id<LoginWireframeProtocol>)router;

@end

NS_ASSUME_NONNULL_END