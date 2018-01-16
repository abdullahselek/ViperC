//
//  ToDoRouter.h
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoProtocols.h"
#import "ToDoViewController.h"

@interface ToDoRouter : NSObject<ToDoWireframeProtocol>

@property (nonatomic, weak) ToDoViewController *viewController;

+ (UIViewController *)createModule;

@end
