//
//  CaptureOTPViewController.h
//  homeloans
//
//  Created by Mark on 2015/07/06.
//  Copyright (c) 2015 MW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ApplicationStepViewController.h"

@interface CaptureOTPViewController : ApplicationStepViewController <UIImagePickerControllerDelegate>

- (IBAction)selectOTP:(id)sender;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end
