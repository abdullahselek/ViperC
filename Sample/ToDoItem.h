//
//  ToDoItem.h
//  Sample
//
//  Created by Selek, Abdullah on 27.04.17.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property (nonatomic) NSString *text;
@property (nonatomic) NSString *date;

- (instancetype)initWithText:(NSString *)text date:(NSString *)date;

@end
