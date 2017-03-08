//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "___FILEBASENAMEASIDENTIFIER___Protocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginInteractor: NSObject<LoginInteractorProtocol>

@property (nonatomic, weak, nullable) id<LoginPresenterProtocol> presenter;

@end

NS_ASSUME_NONNULL_END
