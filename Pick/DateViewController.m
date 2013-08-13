//
//  PickFirstViewController.m
//  Pick
//
//  Created by changhu on 13-8-13.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import "DateViewController.h"

@implementation DateViewController

@synthesize datePicker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }

    return self;
}
							
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

-(IBAction)click:(id)sender{
    NSLog(@"click button....");

    
    NSDate *date = [datePicker date];
    
    NSString *msg = [[NSString alloc]initWithFormat:@"你选择的日期是：%@", date];
    
    NSLog(@" %@", msg);
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"选择时间" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    
    [alert show];
    [alert release];
    [msg release];
}



@end
