//
//  ToDoEntity+CoreDataProperties.m
//  ToD0Manager
//
//  Created by Mohamed Ismail on 10/12/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//
//

#import "ToDoEntity+CoreDataProperties.h"

@implementation ToDoEntity (CoreDataProperties)

+ (NSFetchRequest<ToDoEntity *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"ToDoEntity"];
}

@dynamic title;
@dynamic toDoDetails;
@dynamic toDoDueDate;

@end
