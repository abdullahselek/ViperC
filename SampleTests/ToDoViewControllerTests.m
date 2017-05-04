//
//  ToDoViewControllerTests.m
//  Sample
//
//  Created by Abdullah Selek on 04/05/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Quick/Quick.h>
#import <OCMock/OCMock.h>
#import <Expecta/Expecta.h>
#import "ToDoViewController.h"
#import "ToDoRouter.h"
#import "ToDoItem.h"

@interface ToDoViewController ()

- (IBAction)add:(id)sender;
- (void)showAddedItem:(ToDoItem *)item;

@end

QuickSpecBegin(ToDoViewControllerTests)

describe(@"ToDoViewControllerTests", ^{
    __block ToDoViewController *todoViewController;
    beforeEach(^{
        todoViewController = (ToDoViewController *) [ToDoRouter createModule];
        expect(todoViewController).notTo.beNil();
        __unused UIView *view = todoViewController.view;
        [todoViewController add:[[ToDoItem alloc] initWithText:@"Text" date:@"Date"]];
    });
    context(@"-add action", ^{
        it(@"showAddedItem should be triggered", ^{
            OCMVerify([todoViewController showAddedItem:OCMOCK_ANY]);
        });
    });
    context(@"-reload tableview", ^{
        it(@"cellForRowAtIndexPath should be triggered", ^{
            OCMVerify([todoViewController tableView:todoViewController.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:1]]);
        });
    });
});

QuickSpecEnd
