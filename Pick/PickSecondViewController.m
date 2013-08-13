//
//  PickSecondViewController.m
//  Pick
//
//  Created by changhu on 13-8-13.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import "PickSecondViewController.h"

@interface PickSecondViewController ()

@end

@implementation PickSecondViewController

@synthesize picker;
@synthesize pickerData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *array = [[NSArray alloc]initWithObjects:@"北京", @"天津", @"重庆", @"上海", nil];
    self.pickerData = array;
    
    [array release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


-(IBAction)onClick:(id)sender {
    NSLog(@"click button...");
    NSInteger row  = [picker selectedRowInComponent:0];
    NSString *sel = [pickerData objectAtIndex:row];
    
    NSString *msg = [[NSString alloc]initWithFormat:@"你选择了:%@", sel];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"选择" message:msg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert show];
    [alert release];
    [msg release];
}

#pragma mark 实现协议UIPickerViewDelegate方法 一下几个方法的实现非常重要
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@" pick view.......   ");
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [pickerData objectAtIndex:row];
}

//注意这个方法的名字和别的不一样....
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    //如果只有一个轮子就返回1
    return 1;
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [pickerData count];
}

- (void)dealloc {
    [picker release];
    [pickerData release];
    [super dealloc];
}
@end
