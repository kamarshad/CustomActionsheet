//
//  VRActionSheetController.m
//
//  Created by Kamar Shad on 28/07/15.
//  Copyright (c) 2015 Kamar Shad. All rights reserved.
//

#import "MKSActionSheetController.h"

@interface MKSActionSheetController ()

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) MKSActionSheetView *actionSheetView;
@property (nonatomic) CGRect actionSheetViewFrame;
@property (nonatomic) CGRect hiddenFrame;

@end

static NSTimeInterval kAnimationTime = 0.2f;

@implementation MKSActionSheetController


- (id)init{
    
    self =  [super init];
   
    if(self){
        [self doEarlySetup];
    }
    
    return self;
}

#pragma mark - Private Methods

NSString * kActionSheetView = @"MKSActionSheetView";

- (void)doEarlySetup{

    self.window = [UIApplication sharedApplication].keyWindow;
    
    NSBundle* podBundle =  [NSBundle bundleForClass:[self classForCoder]];
    NSURL* bundleURL =     [podBundle URLForResource:@"CustomActionsheet" withExtension:@"bundle"];
//This code will add all the xib files inside the Pod directory (the ** will recursively check all subfolders of the Pod directory) to a bundle named CustomActionsheet.
    if(!bundleURL){
        assert(@"Could not load the bundle");

    }
    
    self.actionSheetView =  (MKSActionSheetView *)[[podBundle loadNibNamed:kActionSheetView owner:nil options:nil] lastObject];
    self.backgroundView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.backgroundView.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
    self.backgroundView.alpha = 0;
    
    [self.window addSubview:self.backgroundView];
    [self.window addSubview:self.actionSheetView];
    
    //Add Tap gesture to dismiss the view
    UITapGestureRecognizer *dismissTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture)];
    self.backgroundView.userInteractionEnabled = YES;
    [self.backgroundView addGestureRecognizer:dismissTap];
}

- (void)handleTapGesture{
    [self dismissActionsheet];
}

#pragma mark - Public Method
- (void)showActionsheetInControllerInController:(UIViewController*)controller
                          withTitle:(NSString*)title
                          withActionsheetBackgroundColor:(UIColor*)bgColor
                          withCancelButtonTitle:(NSString*)cancelBtnTitle
                          withOtherButton1Title:(NSString*)otherBtn1Title
                          withOtherButton2Title:(NSString*)otherBtn2Title
                          withCancelButtonColor:(UIColor*)cancelBtnColor
                          withOtherButton1Color:(UIColor*)otherBtn1Color
                          withOtherButton2Color:(UIColor*)otherBtn2Color
                        withColpetionBlock:(MKSActionsheetBlock)completion{

    [controller addChildViewController:self];

    [self.actionSheetView customizeActionSheetAppearanceWithTtile:title
                          withActionsheetBackgroundColor:bgColor
                                   withCancelButtonTitle:cancelBtnTitle
                                            withOtherButton1Title:otherBtn1Title
                                            withOtherButton2Title:otherBtn2Title
                                            withCancelButtonColor:cancelBtnColor
                                            withOtherButton1Color:otherBtn1Color
                                            withOtherButton2Color:otherBtn2Color
                                               withColpetionBlock:completion];
    
    
    //Get Visible sheet Height;
    
    CGFloat actionsheetViewHeight =  [self.actionSheetView actionSheetViewHeight];
    
    self.hiddenFrame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, actionsheetViewHeight);
    
    [self.actionSheetView setFrame:self.hiddenFrame];

    self.actionSheetViewFrame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - actionsheetViewHeight, [UIScreen mainScreen].bounds.size.width, actionsheetViewHeight);
    
    [self animateActionSheet];
}

#pragma mark - Show

- (void)animateActionSheet {
    
    __block MKSActionSheetController* wSelf  = self;
    
    [UIView animateWithDuration:kAnimationTime
                          delay:0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         [wSelf.actionSheetView setFrame:wSelf.actionSheetViewFrame];
                         [wSelf.backgroundView setAlpha:1];
                     }
                     completion:^(BOOL finished) {
                     }];
}

#pragma mark - Dissmiss
- (void)dismissActionsheet{
    
    __block MKSActionSheetController* wSelf  = self;

    [UIView animateWithDuration:kAnimationTime
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         [wSelf.actionSheetView setFrame:wSelf.hiddenFrame];
                         [wSelf.backgroundView setAlpha:0];

                     }
                     completion:^(BOOL finished) {
                         [wSelf.actionSheetView removeFromSuperview];
                         [wSelf.backgroundView removeFromSuperview];
                         
                         [wSelf removeFromParentViewController];
                     }];
}

@end
