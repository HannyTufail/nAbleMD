//
//  FirstViewController.m
//  Test
//
//  Created by Imran Ali on 3/7/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"
#import "SearchViewController.h"
#import "LabsViewController.h"
#import "PrescriptionViewController.h"
#import "MessagesViewController.h"
#import "SettingsViewController.h"
#import "ScheduleViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize popovercontroller;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        self.title = NSLocalizedString(@"Search", @"Search");
//        self.tabBarItem.image = [UIImage imageNamed:@"search"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CustomTableViewPopoverControllerViewController *customTablePopover = [[CustomTableViewPopoverControllerViewController alloc] initWithNibName:@"CustomTableViewPopoverControllerViewController" bundle:nil];
    customTablePopover.delegate = self;
    
    self.popovercontroller = [[UIPopoverController alloc] initWithContentViewController:customTablePopover];
    self.popovercontroller.popoverContentSize = CGSizeMake(200, 350);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginBtnTpd:(id)sender {
    
    [self.userNameTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
    
    self.passwordTextField.text = @"";
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate initilizeTabbarController];
    [self presentViewController:appDelegate.tabBarController animated:YES completion:nil];
}

#pragma mark - customTableViewPopoverController

- (void)popoverDidSelectObject:(NSString *)object
{
    self.siteTextFIeld.text = object;
    [self.popovercontroller dismissPopoverAnimated:YES];
}

#pragma mark - UITextFieldDelegate Methods
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if(textField == self.siteTextFIeld)
    {
        [self.popovercontroller presentPopoverFromRect:self.siteTextFIeld.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
        return NO;
    }
    
    return YES;
}

- (void)dealloc {
    [_siteTextFIeld release];
    [_userNameTextField release];
    [_passwordTextField release];
    [popovercontroller release];
    [super dealloc];
}
@end
