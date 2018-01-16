//
//  ToDoViewController.m
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "ToDoViewController.h"

@interface ToDoViewController ()

@property (nonatomic) NSMutableArray *todoList;

@end

@implementation ToDoViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
    UIBarButtonItem *addTodoItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                                 target:self
                                                                                 action:@selector(add:)];
    self.navigationItem.rightBarButtonItem = addTodoItem;
    self.todoList = [NSMutableArray array];
}

#pragma mark - IBActions

- (IBAction)add:(id)sender
{
    ToDoItem *item = [[ToDoItem alloc] initWithText:@"ToDo" date:@"28.04.2017"];
    [self.presenter addToDoItem:item];
}

#pragma mark - WireFrameProtocol

- (void)showAddedItem:(ToDoItem *)item
{
    [self.todoList addObject:item];
    [self.tableView reloadData];
}

#pragma mark - UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.todoList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ToDoTableViewCell"];
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"ToDoTableViewCell" owner:self options:nil];
        cell = [topLevelObjects objectAtIndex:0];
    }
    ToDoItem *item = self.todoList[indexPath.row];
    cell.textLabel.text = item.text;
    return cell;
}

@end
