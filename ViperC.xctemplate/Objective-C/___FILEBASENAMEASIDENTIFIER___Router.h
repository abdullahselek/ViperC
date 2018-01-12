//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "___VARIABLE_viperModuleName___Protocols.h"
#import "___VARIABLE_viperModuleName___ViewController.h"

@interface ___VARIABLE_viperModuleName___Router : NSObject<___VARIABLE_viperModuleName___WireframeProtocol>

@property (nonatomic, weak) ___VARIABLE_viperModuleName___ViewController *viewController;

+ (UIViewController *)createModule;

@end