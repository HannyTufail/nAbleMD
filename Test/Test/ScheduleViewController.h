//
//  SecondViewController.h
//  Test
//
//  Created by Imran Ali on 3/7/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>

@property (retain, nonatomic) IBOutlet UITableView *currentPatientsTableView;
@property (retain, nonatomic) IBOutlet UITableView *patientAppointmentsTableView;
@property (retain, nonatomic) IBOutlet UIView *tableHeaderView;
@property (retain, nonatomic) IBOutlet UIView *currentPatientTableHeaderView;
@property (retain, nonatomic) IBOutlet UITableView *symptomsToogleTableVIew;
@property (retain, nonatomic) IBOutlet UIView *symptomsTableHeaderView;

- (IBAction)showHideBtnTpd:(id)sender;


@end
