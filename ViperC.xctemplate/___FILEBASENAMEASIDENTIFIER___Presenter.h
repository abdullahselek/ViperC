//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "___FILEBASENAMEASIDENTIFIER___InteractorProtocol.h"

@interface ___FILEBASENAMEASIDENTIFIER___Router: NSObject<___FILEBASENAMEASIDENTIFIER___PresenterProtocol>

@property (nonatomic, weak, nullable) id <___FILEBASENAMEASIDENTIFIER___ViewProtocol> view;
@property (nonatomic, weak) id <___FILEBASENAMEASIDENTIFIER___InteractorProtocol> interactor;
@property (nonatomic, weak) id <___FILEBASENAMEASIDENTIFIER___WireframeProtocol> router;

@end