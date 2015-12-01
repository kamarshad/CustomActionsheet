# CustomActionsheet

This is a customized actionsheet which appears on top of UIWindow. Don't worry about the detailed part like show/dismiss animation, It handles everything inside itself.


[![CI Status](http://img.shields.io/travis/mohd kamar shad/CustomActionsheet.svg?style=flat)](https://travis-ci.org/mohd kamar shad/CustomActionsheet)
[![Version](https://img.shields.io/cocoapods/v/CustomActionsheet.svg?style=flat)](http://cocoapods.org/pods/CustomActionsheet)
[![License](https://img.shields.io/cocoapods/l/CustomActionsheet.svg?style=flat)](http://cocoapods.org/pods/CustomActionsheet)
[![Platform](https://img.shields.io/cocoapods/p/CustomActionsheet.svg?style=flat)](http://cocoapods.org/pods/CustomActionsheet)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## How to call

To use display action sheet in your app, simply follow below steps. 

    `#import "MKSActionSheetController.h"`


if you want to display an actionsheet having `Title` and `Two Buttons` along with `Cancel Button` your code should be like this.

    `MKSActionSheetController* actionsheetController = [[MKSActionSheetController alloc] init];

     [actionsheetController showActionsheetInController:self
                            title:@"Actionsheet title" //Actionsheet header title text
                            backgroundColor:[UIColor lightGrayColor] //Actionsheet background color
                            cancelButtonTitle:@"CancelButton title" //Cancel button title text 
                            button1Title:@"Button1 title"  //Button1 title text 
                            button2Title:@"Button1 title"  //Button2 title text 
                            cancelButtonColor:[UIColor lightGrayColor]//Cancel button title text color
                            button1Color:[UIColor darkGrayColor] //Button1 title text color
                            button2Color:[UIColor darkGrayColor] //Button2 button title text color
                            completionBlock:^(kActionsheetTappedButtonIndex index) {
                            //Dissmiss Actionsheet controller
                                [actionsheetController dismissActionsheet];
                            //Do appropriate action
    }];`


If you want to display, an actionsheet having `Single Button` with `Cancel Button` without any `Title` and `Bakcground color`.

        `MKSActionSheetController* actionsheetController = [[MKSActionSheetController alloc] init];

        [actionsheetController showActionsheetInController:self
                                title:nil //Actionsheet header title text
                                backgroundColor:nil //Actionsheet background color
                                cancelButtonTitle:@"CancelButton title" //Cancel button title text 
                                button1Title:@"Button1 title"  //Button1 title text 
                                button2Title:nil   //Button2 title text 
                                cancelButtonColor:[UIColor lightGrayColor]//Cancel button title text color
                                button1Color:[UIColor darkGrayColor] //Button1 title text color
                                button2Color:nil //Button2 title text color
                                completionBlock:^(kActionsheetTappedButtonIndex index) {
                               
                                    //Dissmiss Actionsheet controller
                                       [actionsheetController dismissActionsheet];
                                    //Do appropriate action
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
