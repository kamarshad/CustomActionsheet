//
//  MKActionSheetView.h
//
//  Created by Kamar Shad on 28/07/15.
//  Copyright (c) 2015 Kamar Shad. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, kActionsheetTappedButtonIndex) {
    kActionsheetTappedButtonIndexOther1 = 1,
    kActionsheetTappedButtonIndexOther2 ,
    kActionsheetTappedButtonIndexCancel
};

typedef void (^MKSActionsheetBlock)(kActionsheetTappedButtonIndex tappedIndex);

@interface MKSActionSheetView : UIView

/**
 *  @brief This method use to adjust sheetview frame(constraint) and colors of buttons
 *
 *  @param title          title text which will be displayed on top of actionsheet view
 *  @param bgColor        bgColor background for actionsheet view pass nil if dont want to display it
 *  @param cancelButtonTitle title text that displayed on it
 *  @param button1Title title text that displayed on it
 *  @param button2Title title text that displayed on it
 *  @param cancelButtonColor text color
 *  @param button1Color  text color
 *  @param button2Color text color
 *  @param completionBlock     completionBlock executes once user tap on any button
 */
- (void)customizeActionSheetAppearanceWithTitle:(NSString*)title
                    backgroundColor:(UIColor*)bgColor
                    cancelButtonTitle:(NSString*)cancelButtonTitle
                    button1Title:(NSString*)button1Title
                    button2Title:(NSString*)button2Title
                    cancelButtonTitleColor:(UIColor*)cancelButtonTitleColor
                    button1TitleColor:(UIColor*)button1TitleColor
                    button2TitleColor:(UIColor*)button2TitleColor
                    completionBlock:(MKSActionsheetBlock)completion;

//Returns visible sheet view height
- (CGFloat)actionSheetViewHeight;

@end
