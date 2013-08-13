//
//  PickFirstViewController.h
//  Pick
//
//  Created by changhu on 13-8-13.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DateViewController : UIViewController {

    UIDatePicker *datePicker;
    
}

@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;


-(IBAction)click:(id)sender;

@end
