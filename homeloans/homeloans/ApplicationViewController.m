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

//create the steps
- (NSArray *)stepViewControllers {
    return @[
             [self createStep:@"ApplicationStep1":@"Offer to Purchase"],
             [self createStep:@"ApplicationStep2":@"Verify Details"],
             [self createStep:@"ApplicationStep3":@"Addition Docs"],
             [self createStep:@"ApplicationStep4":@"Submitted"],
             ];
}

//factory method to create wizard steps
- (UIViewController*)createStep:(NSString*)stepStoryBoardIdentifier :(NSString*)title
{
    UIViewController *step = [self.storyboard instantiateViewControllerWithIdentifier:stepStoryBoardIdentifier];
    step.step.title = title;
    return step;
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
