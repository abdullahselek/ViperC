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

@interface ___FILEBASENAMEASIDENTIFIER___Presenter: NSObject<___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol>

@property (nonatomic, weak, nullable) id<___FILEBASENAMEASIDENTIFIER___ViewProtocol> view;
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol> interactor;
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___WireframeProtocol> router;

- (instancetype)initWithInterface:(id<___FILEBASENAMEASIDENTIFIER___ViewProtocol>)interface
                       interactor:(id<___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol>)interactor
                           router:(id<___FILEBASENAMEASIDENTIFIER___WireframeProtocol>)router;

@end

NS_ASSUME_NONNULL_END