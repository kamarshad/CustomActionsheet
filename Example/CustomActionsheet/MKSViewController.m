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
    
    [actionsheetController showActionsheetInControllerInController:self
                                                         withTitle:@"Choose option below action sheet type1"
                                    withActionsheetBackgroundColor:[UIColor lightGrayColor]
                                             withCancelButtonTitle:@"Cancel"
                                             withOtherButton1Title:@"First option"
                                             withOtherButton2Title:@"Second option"
                                             withCancelButtonColor:[UIColor lightGrayColor]
                                             withOtherButton1Color:[UIColor darkGrayColor]
                                             withOtherButton2Color:[UIColor darkGrayColor]
                                                withColpetionBlock:^(kActionsheetTappedButtonIndex index) {
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
    
    [actionsheetController showActionsheetInControllerInController:self
                                                         withTitle:@"Choose option below action sheet type2"
                                    withActionsheetBackgroundColor:[UIColor lightGrayColor]
                                             withCancelButtonTitle:@"Cancel"
                                             withOtherButton1Title:@"First option"
                                             withOtherButton2Title:nil
                                             withCancelButtonColor:[UIColor lightGrayColor]
                                             withOtherButton1Color:[UIColor darkGrayColor]
                                             withOtherButton2Color:nil
                                                withColpetionBlock:^(kActionsheetTappedButtonIndex index) {
                                                    //Dissmiss Actionsheet controller
                                                    [actionsheetController dismissActionsheet];
                                                    //Do appropriate action
                                                    [wSelf actionsheetActionType:index];
                                                }];

}

- (IBAction)type3Action:(id)sender{
    __block MKSViewController* wSelf = self;
    
    MKSActionSheetController* actionsheetController = [[MKSActionSheetController alloc] init];
    
    [actionsheetController showActionsheetInControllerInController:self
                                                         withTitle:nil
                                    withActionsheetBackgroundColor:nil
                                             withCancelButtonTitle:@"Cancel"
                                             withOtherButton1Title:@"First option"
                                             withOtherButton2Title:nil
                                             withCancelButtonColor:[UIColor lightGrayColor]
                                             withOtherButton1Color:[UIColor darkGrayColor]
                                             withOtherButton2Color:nil
                                                withColpetionBlock:^(kActionsheetTappedButtonIndex index) {
                                                    //Dissmiss Actionsheet controller
                                                    [actionsheetController dismissActionsheet];
                                                    //Do appropriate action
                                                    [wSelf actionsheetActionType:index];
                                                }];

    
}

@end
