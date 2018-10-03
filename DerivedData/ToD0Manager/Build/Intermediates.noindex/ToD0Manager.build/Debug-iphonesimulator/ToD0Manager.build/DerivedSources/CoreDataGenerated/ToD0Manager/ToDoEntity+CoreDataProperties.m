//
//  ToDoEntity+CoreDataProperties.m
//  
//
//  Created by Mohamed Ismail on 10/3/18.
//
//  This file was automatically generated and should not be edited.
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
