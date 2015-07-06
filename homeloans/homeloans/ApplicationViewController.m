//
//  ApplicationViewController.m
//  homeloans
//
//  Created by Mark on 2015/07/06.
//  Copyright (c) 2015 MW. All rights reserved.
//

#import "ApplicationViewController.h"

@interface ApplicationViewController ()

@end

@implementation ApplicationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSArray *)stepViewControllers {
    
    UIViewController *firstStep = [self.storyboard instantiateViewControllerWithIdentifier:@"ApplicationStep1"];
    firstStep.step.title = @"Offer to Purchase";
    
    UIViewController *secondStep = [self.storyboard instantiateViewControllerWithIdentifier:@"ApplicationStep2"];
    secondStep.step.title = @"Verify Details";
    
    UIViewController *thirdStep = [self.storyboard instantiateViewControllerWithIdentifier:@"ApplicationStep3"];
    thirdStep.step.title = @"Supply additional information";
    
    UIViewController *fourthStep = [self.storyboard instantiateViewControllerWithIdentifier:@"ApplicationStep4"];
    fourthStep.step.title = @"Application submitted";
    
    return @[firstStep,secondStep,thirdStep,fourthStep];
}

- (void)finishedAllSteps {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)canceled {
    [self dismissViewControllerAnimated:YES completion:nil];
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
