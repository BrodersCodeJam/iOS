//
//  ConfirmOTPViewController.m
//  homeloans
//
//  Created by Mark on 2015/07/06.
//  Copyright (c) 2015 MW. All rights reserved.
//

#import "ConfirmOTPViewController.h"

//deed (stand no)
//area / suburb
//address (multi line string)
//purchase price
//deposit amount
//loan amount


@interface ConfirmOTPViewController ()

@end

@implementation ConfirmOTPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) textFieldShouldReturn: (UITextField *) textField
{
    [textField resignFirstResponder];
    
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
