//
//  ToDoPresenterTests.m
//  Sample
//
//  Created by Abdullah Selek on 01/05/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Quick/Quick.h>
#import <OCMock/OCMock.h>
#import <Expecta/Expecta.h>
#import "ToDoPresenter.h"
#import "ToDoProtocols.h"
#import "ToDoViewController.h"
#import "ToDoRouter.h"
#import "ToDoItem.h"

@interface ToDoPresenter (Tests)

- (void)sendAddedItem:(ToDoItem *)item;

@end

@interface ToDoViewController (Tests)

- (void)showAddedItem:(ToDoItem *)item;

@end

QuickSpecBegin(ToDoPresenterTests)

describe(@"ToDoPresenterTests", ^{
    __block ToDoPresenter *presenter;
    __block ToDoViewController *todoViewController;
    __block ToDoItem *item;
    beforeEach(^{
        id viewProtocolMock = OCMProtocolMock(@protocol(ToDoViewProtocol));
        id inputProtocolMock = OCMProtocolMock(@protocol(ToDoInteractorInputProtocol));
        id wireFrameProtocolMock = OCMProtocolMock(@protocol(ToDoWireframeProtocol));
        presenter = [[ToDoPresenter alloc] initWithInterface:viewProtocolMock
                                                  interactor:inputProtocolMock
                                                      router:wireFrameProtocolMock];
        todoViewController = (ToDoViewController *) [ToDoRouter createModule];
        todoViewController.presenter = presenter;
        item = [[ToDoItem alloc] initWithText:@"Text" date:@"01.05.2017"];
    });
    context(@"-addToDoItem", ^{
        it(@"should add item", ^{
            [presenter addToDoItem:item];
            OCMVerify([todoViewController showAddedItem:OCMOCK_ANY]);
        });
    });
    context(@"-sendAddedItem", ^{
        it(@"should send added item", ^{
            [presenter sendAddedItem:item];
            OCMVerify([todoViewController showAddedItem:OCMOCK_ANY]);
        });
    });
});

QuickSpecEnd
