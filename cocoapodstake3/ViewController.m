//
//  ViewController.m
//  cocoapodstake3
//
//  Created by Jordan Kiley on 6/30/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FAKFontAwesome *rocketIcon =  [ FAKFontAwesome rocketIconWithSize:100 ];

    [ rocketIcon addAttribute:NSForegroundColorAttributeName value:[UIColor redColor]];
    [self.awesomeFontButton setAttributedTitle:rocketIcon.attributedString forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
    CWStatusBarNotification *notification = [ CWStatusBarNotification new];
    [notification displayNotificationWithMessage:@"The button you pressed has an awesome font!" forDuration:5.0f];
}



@end
