//
//  MyUITableViewCell.h
//  ToD0Manager
//
//  Created by Mohamed Ismail on 10/1/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoEntity+CoreDataClass.h"

@interface MyUITableCell : UITableViewCell

@property (strong, nonatomic) ToDoEntity *LocalToDoEntity;
@property (weak, nonatomic) IBOutlet UILabel *ToDoDate;
@property (weak, nonatomic) IBOutlet UILabel *ToDoData;

- (void) setInternalFields:(ToDoEntity *) incomingToDoEntity;

@end
