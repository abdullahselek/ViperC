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

@interface ToDoViewController: UIViewController<ToDoViewProtocol, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, nullable) id<ToDoPresenterProtocol> presenter;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
