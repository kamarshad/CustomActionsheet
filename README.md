# CustomActionsheet

This is a customized actionsheet View, which appears on top of UIWindow. Don't worry about the detailed part like show/dismiss animation, It handles everything inside itself.


[![CI Status](http://img.shields.io/travis/mohd kamar shad/CustomActionsheet.svg?style=flat)](https://travis-ci.org/mohd kamar shad/CustomActionsheet)
[![Version](https://img.shields.io/cocoapods/v/CustomActionsheet.svg?style=flat)](http://cocoapods.org/pods/CustomActionsheet)
[![License](https://img.shields.io/cocoapods/l/CustomActionsheet.svg?style=flat)](http://cocoapods.org/pods/CustomActionsheet)
[![Platform](https://img.shields.io/cocoapods/p/CustomActionsheet.svg?style=flat)](http://cocoapods.org/pods/CustomActionsheet)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## How to call:

To use display action sheet in your app, simply follow below steps. 

    `#import "MKSActionSheetController.h"`


if you want to display actionsheet having `title` and `two buttons` along with `cancel button` your code should be like this.

    `MKSActionSheetController* actionsheetController = [[MKSActionSheetController alloc] init];

     [actionsheetController showActionsheetInControllerInController:self
                            withTitle:@"Actionsheet title"
                            withActionsheetBackgroundColor:[UIColor lightGrayColor]
                            withCancelButtonTitle:@"CancelButton title"
                            withOtherButton1Title:@"First Button title"
                            withOtherButton2Title:@"Second Button title"
                            withCancelButtonColor:[UIColor lightGrayColor]//Cancel button title color
                            withOtherButton1Color:[UIColor darkGrayColor] //First button title color
                            withOtherButton2Color:[UIColor darkGrayColor] //Second button title color
                            withColpetionBlock:^(kActionsheetTappedButtonIndex index) {
                            //Dissmiss Actionsheet controller
                                [actionsheetController dismissActionsheet];
                            //Do appropriate action
                            //Basis of button tapped do your work.
    }];`


If you want to display, actionsheet having `One button` with `cancel button` having no ation sheet title, with no `actionsheet bakcground` .

        `MKSActionSheetController* actionsheetController = [[MKSActionSheetController alloc] init];

        [actionsheetController showActionsheetInControllerInController:self
                                withTitle:nil
                                withActionsheetBackgroundColor:nil
                                withCancelButtonTitle:@"CancelButton title"
                                withOtherButton1Title:@"First Button title"
                                withOtherButton2Title:nil
                                withCancelButtonColor:[UIColor lightGrayColor]//Cancel button title color
                                withOtherButton1Color:[UIColor darkGrayColor] //First button title color
                                withOtherButton2Color:nil //Second button title color
                                withColpetionBlock:^(kActionsheetTappedButtonIndex index) {
                                //Dissmiss Actionsheet controller
                                    [actionsheetController dismissActionsheet];
                                //Do appropriate action
                                //Basis of button tapped do your work.
        }];`



## Requirements

It runs on iOS 7 and above OS version .

## Installation

CustomActionsheet is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CustomActionsheet'
```

## Author

Mohd Kamar Shad, kamarshad0786@gmail.com

## License

CustomActionsheet is available under the MIT license. See the LICENSE file for more info.
