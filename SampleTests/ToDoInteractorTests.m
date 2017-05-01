//
//  ToDoInteractorTests.m
//  Sample
//
//  Created by Abdullah Selek on 01/05/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Quick/Quick.h>
#import <OCMock/OCMock.h>
#import <Expecta/Expecta.h>
#import "ToDoInteractor.h"
#import "ToDoItem.h"

@interface ToDoInteractor (Tests)

- (void)setOutput:(id<ToDoInteractorOutputProtocol>)output;
- (id<ToDoInteractorOutputProtocol>)getOutputProtocol;
- (void)addToDoItem:(ToDoItem *)item;

@end

QuickSpecBegin(ToDoInteractorTests)

describe(@"ToDoInteractorTests", ^{
    __block ToDoInteractor *interactor;
    beforeEach(^{
        interactor = [[ToDoInteractor alloc] init];
    });
    context(@"-setOutput", ^{
        it(@"should set output delegate", ^{
            id outputProtocolMock = OCMProtocolMock(@protocol(ToDoInteractorOutputProtocol));
            [interactor setOutput:outputProtocolMock];
            expect(interactor.output).to.equal(outputProtocolMock);
        });
    });
    context(@"-getOutputProtocol", ^{
        it(@"should return delegate", ^{
            id outputProtocolMock = OCMProtocolMock(@protocol(ToDoInteractorOutputProtocol));
            [interactor setOutput:outputProtocolMock];
            expect([interactor getOutputProtocol]).to.equal(outputProtocolMock);
        });
    });
    context(@"-addToDoItem", ^{
        it(@"should add given item", ^{
            id outputProtocolMock = OCMProtocolMock(@protocol(ToDoInteractorOutputProtocol));
            [interactor setOutput:outputProtocolMock];
            ToDoItem *item = [[ToDoItem alloc] initWithText:@"Text" date:@"01.05.2017"];
            [interactor addToDoItem:item];
            OCMVerify([outputProtocolMock sendAddedItem:OCMOCK_ANY]);
        });
    });
});

QuickSpecEnd
