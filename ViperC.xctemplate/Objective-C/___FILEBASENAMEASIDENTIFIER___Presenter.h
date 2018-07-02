//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "___VARIABLE_viperModuleName___Protocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface ___VARIABLE_viperModuleName___Presenter : NSObject<___VARIABLE_viperModuleName___InteractorOutputProtocol, ___VARIABLE_viperModuleName___PresenterProtocol>

@property (nonatomic, weak, nullable) id<___VARIABLE_viperModuleName___ViewProtocol> view;
@property (nonatomic) id<___VARIABLE_viperModuleName___InteractorInputProtocol> interactor;
@property (nonatomic) id<___VARIABLE_viperModuleName___WireframeProtocol> router;

- (instancetype)initWithInterface:(id<___VARIABLE_viperModuleName___ViewProtocol>)interface interactor:(id<___VARIABLE_viperModuleName___InteractorInputProtocol>)interactor router:(id<___VARIABLE_viperModuleName___WireframeProtocol>)router;

@end

NS_ASSUME_NONNULL_END
