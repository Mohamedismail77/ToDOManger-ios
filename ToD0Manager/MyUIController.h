//
//  MyUIController.h
//  ToD0Manager
//
//  Created by Mohamed Ismail on 9/30/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPHandlesMOC.h"
#import "DPHandlesToDoEntity.h"
#import "ToDoEntity+CoreDataClass.h"

@interface MyUIController : UIViewController <DPHandlesMOC, DPHandlesToDoEntity>


- (void) receiveMOC:(NSManagedObjectContext *)incomMOC;
- (void) receiveTODoEntity:(ToDoEntity *) incomingToDoEntity;


@end
