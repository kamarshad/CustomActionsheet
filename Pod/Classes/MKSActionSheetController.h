//
//  MKActionSheetController.h
//
//  Created by Kamar Shad on 28/07/15.
//  Copyright (c) 2015 Kamar Shad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MKSActionSheetView.h"

@interface MKSActionSheetController : UIViewController


/**
 *  @brief To display actionsheet view call this method
 *
 *  @param title          title text which will be displayed on top of actionsheet view
 *  @param bgColor        bgColor background for actionsheet view pass nil if dont want to display it
 *  @param cancelButtonTitle title text that displayed on it
 *  @param button1Title title text that displayed on it
 *  @param button2Title title text that displayed on it
 *  @param cancelButtonColor text color
 *  @param button1Color  text color
 *  @param button2Color text color
 *  @param completionBlock     completion executes once user tap on any button
 */
- (void)showActionsheetInController:(UIViewController*)controller
                    title:(NSString*)title
                    backgroundColor:(UIColor*)bgColor
                    cancelButtonTitle:(NSString*)cancelButtonTitle
                    button1Title:(NSString*)button1Title
                    button2Title:(NSString*)button2Title
                    cancelButtonTitleColor:(UIColor*)cancelButtonColor
                    button1TitleColor:(UIColor*)button1Color
                    button2TitleColor:(UIColor*)button2Color
                    completionBlock:(MKSActionsheetBlock)completion;

/**
 *  @brief Call this method to dismiss action sheet
 */
- (void)dismissActionsheet;

@end


