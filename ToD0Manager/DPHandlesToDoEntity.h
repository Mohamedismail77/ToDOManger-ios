//
//  DPHandlesToDoEntity.h
//  ToD0Manager
//
//  Created by Mohamed Ismail on 9/30/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DPHandlesToDoEntity <NSObject>

- (void) receiveTODoEntity:(ToDoEntity *) incomingToDoEntity;

@end
