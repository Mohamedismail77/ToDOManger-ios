//
//  ToDoEntity+CoreDataProperties.h
//  
//
//  Created by Mohamed Ismail on 10/3/18.
//
//  This file was automatically generated and should not be edited.
//

#import "ToDoEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ToDoEntity (CoreDataProperties)

+ (NSFetchRequest<ToDoEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *toDoDetails;
@property (nullable, nonatomic, copy) NSDate *toDoDueDate;

@end

NS_ASSUME_NONNULL_END
