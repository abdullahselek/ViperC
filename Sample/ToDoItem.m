//
//  ToDoItem.m
//  Sample
//
//  Created by Selek, Abdullah on 27.04.17.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

- (instancetype)initWithText:(NSString *)text date:(NSString *)date
{
    if (self = [super init])
    {
        self.text = text;
        self.date = date;
    }
    return self;
}

@end
