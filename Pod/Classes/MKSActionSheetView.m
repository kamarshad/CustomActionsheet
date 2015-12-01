//
//  MKActionSheetView.m
//  Created by Kamar Shad on 28/07/15.
//  Copyright (c) 2015 Kamar Shad. All rights reserved.
//

#import "MKSActionSheetView.h"


@interface MKSActionSheetView(){

}

@property(nonatomic,weak) IBOutlet UIView* actionsheetMainView;
@property(nonatomic,weak) IBOutlet UIButton* cancelBtn;
@property(nonatomic,weak) IBOutlet UIButton* otherButton1;
@property(nonatomic,weak) IBOutlet UIButton* otherButton2;
@property(nonatomic,weak) IBOutlet UILabel* sheetMessageLabel;

@property (nonatomic,strong)IBOutlet NSLayoutConstraint* actionsheetViewHeightConstraint;
@property (nonatomic,strong)IBOutlet NSLayoutConstraint* otherButton1AndOtherBtn2PaddingConstraint;
@property (nonatomic,strong)IBOutlet NSLayoutConstraint* otherButton2HeightConstraint;


@property (nonatomic,copy) MKSActionsheetBlock compeltionBlock;


@end

@implementation MKSActionSheetView

#pragma mark - View Life Cycle Method

- (id)initWithCoder:(NSCoder *)aDecoder{
    self =  [super initWithCoder:aDecoder];
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    [self doEarlyConfuguration];
}

- (void)dealloc{

    self.actionsheetViewHeightConstraint = nil;
    self.otherButton1AndOtherBtn2PaddingConstraint = nil;
    self.otherButton2HeightConstraint = nil;
    
    self.actionsheetMainView = nil;
    self.cancelBtn = nil;
    self.otherButton1 = nil;
    self.sheetMessageLabel = nil;
    
    self.compeltionBlock = nil;
    
}


#pragma mark - Private Method

- (void)doEarlyConfuguration{
    [self.otherButton1.layer setCornerRadius:4.0f];
    [self.otherButton1.layer setBorderColor:[self borderColor].CGColor];
    [self.otherButton1.layer setBorderWidth:1.0f];
    
    [self.otherButton2.layer setCornerRadius:4.0f];
    [self.otherButton2.layer setBorderColor:[self borderColor].CGColor];
    [self.otherButton2.layer setBorderWidth:1.0f];
    
    [self.cancelBtn.layer setCornerRadius:4.0f];
    [self.cancelBtn.layer setBorderColor:[self borderColor].CGColor];
    [self.cancelBtn.layer setBorderWidth:1.0f];

}

- (UIColor*)borderColor{
    return [UIColor colorWithRed:209.0/255.0 green:209.0/255.0 blue:209.0/255.0 alpha:1.0];
}

- (void)adjustAletviewHeightUsingTitle:(NSString*)title button1Title:(NSString*)button1Title  button2Title:(NSString*)button2Title{
    

    //Padding
    CGFloat titleStringOriginY =  self.sheetMessageLabel.frame.origin.y *2  ;
    CGFloat cancelBtnTopPadding =  10.0 ;
    CGFloat otherBtn1AndOtherBtn2 =  0.0 ;
    CGFloat cancelBtnBottomPadding =  10.0 ;
    
    //Height
    CGFloat titleStringHeight =  0 ;
    CGFloat otherButton2Height =  0.0 ;
    CGFloat otherButton1Height =  0.0 ;
    CGFloat cancelButtonHeight =  45.0 ;

    //If title text is not available simply adjust constraint for it
    if(title.length>0){
        titleStringHeight =  titleStringOriginY + [self  calculateStringHeight:title havingWidth:self.sheetMessageLabel.frame.size.width havingFont:self.sheetMessageLabel.font];
    }
    
    //if otherbutton1title available then only count its height
    if(button1Title.length>0){
        otherButton1Height =  45;
    }

    //if otherbutton2title available then only count its height
    if(button2Title.length>0){
        otherButton2Height = 45;
        otherBtn1AndOtherBtn2 = 5.0;
    }

    //calculate final padding view height
    CGFloat totalPadding  = titleStringOriginY  + cancelBtnTopPadding + otherBtn1AndOtherBtn2 + cancelBtnBottomPadding;
    CGFloat sheetViewHeight   =  titleStringHeight + otherButton2Height + otherButton1Height + cancelButtonHeight ;
    CGFloat finalHeight = sheetViewHeight + totalPadding;
    
    //Update The sheet view height
    self.otherButton2HeightConstraint.constant  = otherButton2Height;
    self.otherButton1AndOtherBtn2PaddingConstraint.constant  = otherBtn1AndOtherBtn2;
    self.actionsheetViewHeightConstraint.constant =  finalHeight ;
    //refresh view layout
    [self layoutIfNeeded];
}


#pragma mark - Button Action

- (IBAction)otherButton1Action:(id)sender {
  
    if(self.compeltionBlock){
        self.compeltionBlock(kActionsheetTappedButtonIndexOther1);
    }
}

- (IBAction)otherButton2Action:(id)sender {
    if(self.compeltionBlock){
        self.compeltionBlock(kActionsheetTappedButtonIndexOther2);
    }
    
}

- (IBAction)cancelBtnAction:(id)sender {

    if(self.compeltionBlock){
        self.compeltionBlock(kActionsheetTappedButtonIndexCancel);
    }
}


- (CGFloat)calculateStringHeight:(NSString*)string havingWidth:(CGFloat)width havingFont:(UIFont*)font{
    CGFloat result = font.pointSize;
    
    if (font) {
        CGSize textSize = {width, MAXFLOAT};
        CGSize size;
        
        CGRect frame = [string boundingRectWithSize:textSize
                                          options:NSStringDrawingUsesLineFragmentOrigin
                                       attributes:@{NSFontAttributeName : font}
                                          context:nil];
        size = CGSizeMake(frame.size.width, frame.size.height);
        
        
        result = MAX(size.height, result);
    }
    return round(result) + 1;

}
#pragma mark - Public Method

- (void)customizeActionSheetAppearanceWithTitle:(NSString*)title
                                backgroundColor:(UIColor*)bgColor
                              cancelButtonTitle:(NSString*)cancelButtonTitle
                                   button1Title:(NSString*)button1Title
                                   button2Title:(NSString*)button2Title
                         cancelButtonTitleColor:(UIColor*)cancelButtonTitleColor
                              button1TitleColor:(UIColor*)button1TitleColor
                              button2TitleColor:(UIColor*)button2TitleColor
                                completionBlock:(MKSActionsheetBlock)completion{

    self.compeltionBlock =  completion;
    
    self.sheetMessageLabel.text = title;
    self.actionsheetMainView.backgroundColor = bgColor;
    
    
    [self.cancelBtn setTitle:cancelButtonTitle forState:UIControlStateNormal];
    [self.cancelBtn setTitle:cancelButtonTitle forState:UIControlStateSelected];
    [self.cancelBtn setTitle:cancelButtonTitle forState:UIControlStateHighlighted];
    [self.otherButton1 setTitle:button1Title forState:UIControlStateNormal];
    [self.otherButton1 setTitle:button1Title forState:UIControlStateSelected];
    [self.otherButton1 setTitle:button1Title forState:UIControlStateHighlighted];
    [self.otherButton2 setTitle:button2Title forState:UIControlStateNormal];
    [self.otherButton2 setTitle:button2Title forState:UIControlStateSelected];
    [self.otherButton2 setTitle:button2Title forState:UIControlStateHighlighted];
    

    [self.cancelBtn setTitleColor:cancelButtonTitleColor forState:UIControlStateNormal];
    [self.otherButton1 setTitleColor:button1TitleColor forState:UIControlStateNormal];
    [self.otherButton2 setTitleColor:button2TitleColor forState:UIControlStateNormal];

    
    
    [self adjustAletviewHeightUsingTitle:title
                            button1Title:button1Title
                            button2Title:button2Title];
    
}

- (CGFloat)actionSheetViewHeight{
    return self.actionsheetViewHeightConstraint.constant;
}

@end
