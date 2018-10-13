//
//  MyUITableViewCell.m
//  ToD0Manager
//
//  Created by Mohamed Ismail on 10/1/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//

#import "MyUITableCell.h"

@implementation MyUITableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void) setInternalFields:(ToDoEntity *) incomingToDoEntity {
    
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc]init];
    [dateFormater setDateStyle:NSDateFormatterShortStyle];
    [dateFormater setTimeStyle:NSDateFormatterShortStyle];
    
    self.ToDoData.text = incomingToDoEntity.toDoDetails;
    
    self.LocalToDoEntity = incomingToDoEntity;

    self.ToDoDate.text = [dateFormater stringFromDate:incomingToDoEntity.toDoDueDate]; 

}

@end
