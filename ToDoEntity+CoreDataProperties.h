//
//  ToDoEntity+CoreDataProperties.h
//  ToD0Manager
//
//  Created by Mohamed Ismail on 10/12/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//
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
