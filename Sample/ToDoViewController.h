//
//  ToDoViewController.h
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoProtocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoViewController: UIViewController<ToDoViewProtocol>

@property (nonatomic, nullable) id<ToDoPresenterProtocol> presenter;

@end

NS_ASSUME_NONNULL_END