//
//  ToDoRouterTests.m
//  Sample
//
//  Created by Abdullah Selek on 02/05/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Quick/Quick.h>
#import <OCMock/OCMock.h>
#import <Expecta/Expecta.h>
#import "ToDoRouter.h"
#import "ToDoViewController.h"

QuickSpecBegin(ToDoRouterTests)

describe(@"ToDoRouterTests", ^{
    context(@"-createModule", ^{
        it(@"should create module successfully", ^{
            ToDoViewController *todoViewController = (ToDoViewController *) [ToDoRouter createModule];
            expect(todoViewController).notTo.beNil();
        });
    });
});

QuickSpecEnd
