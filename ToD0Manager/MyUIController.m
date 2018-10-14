//
//  MyUIController.m
//  ToD0Manager
//
//  Created by Mohamed Ismail on 9/30/18.
//  Copyright © 2018 Mohamed Ismail. All rights reserved.
//

#import "MyUIController.h"

@interface MyUIController ()
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) ToDoEntity *localToDoEntity;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *detailsField;
@property (weak, nonatomic) IBOutlet UIDatePicker *dueDateField;

@property (nonatomic, assign) BOOL wasDeleted;

@end

@implementation MyUIController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) textViewDidEndEditing:(NSNotification *) notification{
    if([notification object] == self){
        self.localToDoEntity.toDoDetails = self.detailsField.text;
        [self saveMyToDoEntity];
    }
}

- (void) viewWillAppear:(BOOL)animated{
    
    self.wasDeleted = NO;

    
    self.titleField.text = self.localToDoEntity.title;
    self.detailsField.text = self.localToDoEntity.toDoDetails;
    
    NSDate *dueDate = self.localToDoEntity.toDoDueDate;
    if(dueDate != nil){
        [self.dueDateField setDate:dueDate];
    }
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidEndEditing:) name:UITextViewTextDidEndEditingNotification object:self];
    
    
    
}

- (void) viewWillDisappear:(BOOL)animated{
    
    if(self.wasDeleted == NO){
        self.localToDoEntity.title = self.titleField.text;
        self.localToDoEntity.toDoDetails = self.detailsField.text;
        self.localToDoEntity.toDoDueDate = self.dueDateField.date;
        
        [self saveMyToDoEntity];
    }

    
    [[NSNotificationCenter defaultCenter]removeObserver:self name:UITextViewTextDidEndEditingNotification object:self];
    
}

- (IBAction)trachCainTabed:(id)sender {
    
    self.wasDeleted = YES;
    
    [self.managedObjectContext deleteObject:self.localToDoEntity];
    [self saveMyToDoEntity];
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}


- (void) saveMyToDoEntity{
    
    NSError *err;
    BOOL saveSuccess = [self.managedObjectContext save:&err];
    if(!saveSuccess){
        @throw [NSException exceptionWithName:NSGenericException reason:@"Couldn't save" userInfo:@{NSUnderlyingErrorKey:err}];
    }
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)titleFieldEditted:(id)sender {
    
    self.localToDoEntity.title = self.titleField.text;
    [self saveMyToDoEntity];
    
}
- (IBAction)dueDateEditted:(id)sender {
    
    self.localToDoEntity.toDoDueDate = self.dueDateField.date;
    [self saveMyToDoEntity];
    
}


- (void) receiveMOC:(NSManagedObjectContext *)incomMOC{
    self.managedObjectContext = incomMOC;
}

- (void) receiveTODoEntity:(ToDoEntity *) incomingToDoEntity {
    self.localToDoEntity = incomingToDoEntity;
}

@end
