//
//  VRActionSheetView.h
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
 *  @param title          title title text which will be displayed on top of actionsheet view
 *  @param bgColor        bgColor background for actionsheet view pass nil if dont want to display it
 *  @param cancelBtnTitle cancelBtnTitle text title
 *  @param otherBtn1Title otherBtn1Title text title
 *  @param otherBtn2Title otherBtn2Title text title
 *  @param cancelBtnColor cancelBtnColor text color
 *  @param otherBtn1Color otherBtn1Color text color
 *  @param otherBtn2Color otherBtn2Color text color
 *  @param completion     completion executes once user tap on any button
 */

- (void)customizeActionSheetAppearanceWithTtile:(NSString*)title
                 withActionsheetBackgroundColor:(UIColor*)bgColor
                          withCancelButtonTitle:(NSString*)cancelBtnTitle
                          withOtherButton1Title:(NSString*)otherBtn1Title
                          withOtherButton2Title:(NSString*)otherBtn2Title
                          withCancelButtonColor:(UIColor*)cancelBtnColor
                          withOtherButton1Color:(UIColor*)otherBtn1Color
                          withOtherButton2Color:(UIColor*)otherBtn2Color
                             withColpetionBlock:(MKSActionsheetBlock)completion;


//Returns visible sheet view height
- (CGFloat)actionSheetViewHeight;

@end
