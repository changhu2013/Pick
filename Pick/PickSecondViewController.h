//
//  PickSecondViewController.h
//  Pick
//
//  Created by changhu on 13-8-13.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickSecondViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{

    UIPickerView *picker;
    NSArray *pickerData;
}

@property (retain, nonatomic) IBOutlet UIPickerView *picker;
@property (retain, nonatomic) NSArray *pickerData;

-(IBAction)onClick:(id)sender;

@end
