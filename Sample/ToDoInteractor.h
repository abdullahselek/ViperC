//
//  ToDoInteractor.h
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoProtocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoInteractor: NSObject<ToDoInteractorProtocol>

@property (nonatomic, weak, nullable) id<ToDoPresenterProtocol> presenter;

@end

NS_ASSUME_NONNULL_END
