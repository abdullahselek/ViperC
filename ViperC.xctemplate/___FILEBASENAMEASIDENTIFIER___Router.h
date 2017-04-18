//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "___FILEBASENAMEASIDENTIFIER___Protocols.h"
#import "___FILEBASENAMEASIDENTIFIER___ViewController.h"

@interface ___FILEBASENAMEASIDENTIFIER___Router: NSObject<___FILEBASENAMEASIDENTIFIER___WireframeProtocol>

@property (nonatomic, weak) ___FILEBASENAMEASIDENTIFIER___ViewController *viewController;

+ (UIViewController *)createModule;

@end