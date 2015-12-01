//
//  MKSViewController.m
//  CustomActionsheet
//
//  Created by mohd kamar shad on 11/26/2015.
//  Copyright (c) 2015 mohd kamar shad. All rights reserved.
//

#import "MKSViewController.h"

#import "MKSActionSheetController.h"

@interface MKSViewController ()

@end

@implementation MKSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)type1Action:(id)sender{
    __block MKSViewController* wSelf = self;
    
    MKSActionSheetController* actionsheetController = [[MKSActionSheetController alloc] init];
    
    [actionsheetController showActionsheetInController:self
                                                 title:@"Choose option below action sheet type1"
                                       backgroundColor:[UIColor lightGrayColor]
                                     cancelButtonTitle:@"Cancel"
                                          button1Title:@"First option"
                                          button2Title:@"Second option"
                                cancelButtonTitleColor:[UIColor lightGrayColor]
                                     button1TitleColor:[UIColor darkGrayColor]
                                     button2TitleColor:[UIColor darkGrayColor]
                                        completionBlock:^(kActionsheetTappedButtonIndex index) {
                                            
                                            //Dissmiss Actionsheet controller
                                            
                                            [actionsheetController dismissActionsheet];
                                            //Do appropriate action
                                            [wSelf actionsheetActionType:index];
                                        }];
}

- (void)actionsheetActionType:(kActionsheetTappedButtonIndex)index{
    
    switch (index) {
        case kActionsheetTappedButtonIndexOther1:
            //DO whatever task required to do
            break;
        case kActionsheetTappedButtonIndexOther2:
            //DO whatever task required to do
            break;
            
        default:
            //Cancel action
            break;
    }
}

- (IBAction)type2Action:(id)sender{
    
    __block MKSViewController* wSelf = self;
    
    MKSActionSheetController* actionsheetController = [[MKSActionSheetController alloc] init];
    
    [actionsheetController showActionsheetInController:self
                                                 title:@"Choose option below action sheet type2"
                                       backgroundColor:[UIColor lightGrayColor]
                                     cancelButtonTitle:@"Cancel"
                                          button1Title:@"First option"
                                          button2Title:nil
                                cancelButtonTitleColor:[UIColor lightGrayColor]
                                     button1TitleColor:[UIColor darkGrayColor]
                                     button2TitleColor:nil
                                        completionBlock:^(kActionsheetTappedButtonIndex index) {
                                            
                                            //Dissmiss Actionsheet controller
                                            
                                            [actionsheetController dismissActionsheet];
                                            
                                            //Do appropriate action
                                            
                                            [wSelf actionsheetActionType:index];
                                            
                                        }];
    
}

- (IBAction)type3Action:(id)sender{
    __block MKSViewController* wSelf = self;
    
    MKSActionSheetController* actionsheetController = [[MKSActionSheetController alloc] init];
    
    [actionsheetController showActionsheetInController:self
                                                 title:nil
                                       backgroundColor:nil
                                     cancelButtonTitle:@"Cancel"
                                          button1Title:@"First option"
                                          button2Title:nil
                                cancelButtonTitleColor:[UIColor lightGrayColor]
                                     button1TitleColor:[UIColor darkGrayColor]
                                     button2TitleColor:nil
                                        completionBlock:^(kActionsheetTappedButtonIndex index) {
                                            
                                            //Dissmiss Actionsheet controller
                                            
                                            [actionsheetController dismissActionsheet];
                                            
                                            //Do appropriate action
                                            
                                            [wSelf actionsheetActionType:index];
                                            
                                        }];
    
}

@end
