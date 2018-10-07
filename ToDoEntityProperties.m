//
//  ToDoEntity+CoreDataProperties.m
//  ToD0Manager
//
//  Created by Mohamed Ismail on 10/3/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//
//

#import "ToDoEntityProperties.h"

@implementation ToDoEntity (CoreDataProperties)

+ (NSFetchRequest<ToDoEntity *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"ToDoEntity"];
}

@dynamic title;
@dynamic toDoDetails;
@dynamic toDoDueDate;

@end
