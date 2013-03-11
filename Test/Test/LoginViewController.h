//
//  FirstViewController.h
//  Test
//
//  Created by Imran Ali on 3/7/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewPopoverControllerViewController.h"

@interface LoginViewController : UIViewController
{
    UIPopoverController *popovercontroller;
}

@property (retain, nonatomic) IBOutlet UITextField *siteTextFIeld;
@property (retain, nonatomic) IBOutlet UITextField *userNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *passwordTextField;
@property (retain, nonatomic) UIPopoverController *popovercontroller;

- (IBAction)loginBtnTpd:(id)sender;

@end
