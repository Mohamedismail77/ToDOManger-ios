//
//  MyUINavigationController.h
//  ToD0Manager
//
//  Created by Mohamed Ismail on 9/30/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPHandlesMOC.h"


@interface MyUINavigationController : UINavigationController  <DPHandlesMOC>

- (void) receiveMOC:(NSManagedObjectContext *)incomMOC;

@end
