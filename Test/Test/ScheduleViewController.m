//
//  SecondViewController.m
//  Test
//
//  Created by Imran Ali on 3/7/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import "ScheduleViewController.h"
#import "ScheduleCell.h"
#import "LoginViewController.h"
#import "PatientExamRoomCell.h"
#import "SymptomsCell.h"

@interface ScheduleViewController ()

@end

@implementation ScheduleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"search"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.patientAppointmentsTableView registerNib:[UINib nibWithNibName:@"ScheduleCell" bundle:nil] forCellReuseIdentifier:@"ScheduleCell"];
    [self.currentPatientsTableView registerNib:[UINib nibWithNibName:@"PatientExamRoomCell" bundle:nil] forCellReuseIdentifier:@"PatientExamRoomCell"];
    [self.symptomsToogleTableVIew registerNib:[UINib nibWithNibName:@"SymptomsCell" bundle:nil] forCellReuseIdentifier:@"SymptomsCell"];
    
    for(UIView *label in self.tableHeaderView.subviews)
    {
        if([label isKindOfClass:[UILabel class]])
        {
            label.layer.borderColor = [UIColor blueColor].CGColor;
            label.layer.borderWidth = 2.0;
        }
    }
    
    for(UIView *label in self.currentPatientTableHeaderView.subviews)
    {
        if([label isKindOfClass:[UILabel class]])
        {
            label.layer.borderColor = [UIColor blueColor].CGColor;
            label.layer.borderWidth = 2.0;
        }
    }
    
    for(UIView *label in self.symptomsTableHeaderView.subviews)
    {
        if([label isKindOfClass:[UILabel class]])
        {
            label.layer.borderColor = [UIColor blueColor].CGColor;
            label.layer.borderWidth = 2.0;
        }
    }
    
    self.patientAppointmentsTableView.tableHeaderView = self.tableHeaderView;
    self.currentPatientsTableView.tableHeaderView = self.currentPatientTableHeaderView;
    self.symptomsToogleTableVIew.tableHeaderView = self.symptomsTableHeaderView;
}

#pragma mark - UITableViewDelegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView == self.patientAppointmentsTableView || tableView == self.symptomsToogleTableVIew)
        return 50;
    else
        return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(tableView == self.patientAppointmentsTableView)
    {
        ScheduleCell *cell = nil;
        cell = [ScheduleCell cellFromNibNamed:@"ScheduleCell"];
        
        if(!cell)
        {
            NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:@"ScheduleCell" owner:self options:NULL];
            cell = [nibContents objectAtIndex:0];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        cell.appointmentTime.text = @"8:00 AM";
        cell.appoinementPatientName.text = @"Farrah Rolle";
        cell.appointmentType.text = @"office visit";
        cell.appoinementINS.text = @"Aetna";
        cell.appoinementLastSeen.text = @"03/05/2013";
        
        cell.appointmentTime.layer.borderColor = [UIColor blueColor].CGColor;
        
        return cell;
        
    }
    else if(tableView == self.currentPatientsTableView)
    {
        PatientExamRoomCell *cell = nil;
        cell = [PatientExamRoomCell cellFromNibNamed:@"PatientExamRoomCell"];
        
        if(!cell)
        {
            NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:@"PatientExamRoomCell" owner:self options:NULL];
            cell = [nibContents objectAtIndex:0];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        cell.examRoom.text = @"Room A";
        cell.patientName.text = @"Johan Smith";
        cell.provider.text = @"Dr. White";
        cell.visitType.text = @"Sore Throat";
        cell.timeIn.text = @"11:00 AM";
        
        return cell;
    }
    else if(tableView == self.symptomsToogleTableVIew)
    {
        SymptomsCell *cell = nil;
        cell = [SymptomsCell cellFromNibNamed:@"SymptomsCell"];
        
        if(!cell)
        {
            NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:@"SymptomsCell" owner:self options:NULL];
            cell = [nibContents objectAtIndex:0];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        return cell;
    }
    
    return nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_currentPatientsTableView release];
    [_patientAppointmentsTableView release];
    [_tableHeaderView release];
    [_currentPatientTableHeaderView release];
    [_symptomsToogleTableVIew release];
    [_symptomsTableHeaderView release];
    [super dealloc];
}

- (IBAction)showHideBtnTpd:(id)sender {
    
    CGRect frame = self.symptomsToogleTableVIew.frame;
    UIBarButtonItem *button = (UIBarButtonItem*)sender;
    BOOL canShow = NO;
    button.enabled = NO;
    if([button.title isEqualToString:@"Show"])
    {
        button.title = @"Hide";
        frame.origin.x += 231;
        self.symptomsToogleTableVIew.frame = frame;
        frame.origin.x -= 231;
        canShow = YES;
        [self.view bringSubviewToFront:self.symptomsToogleTableVIew];
    }
    else
    {
        button.title = @"Show";
        frame.origin.x += 231;
    }

    [UIView animateWithDuration:1.0 animations:^{
        self.symptomsToogleTableVIew.frame = frame;
    } completion:^(BOOL finished) {
        button.enabled = YES;
        if(canShow)
        {
            
        }
        else
        {
            CGRect tableFrame = self.symptomsToogleTableVIew.frame;
            tableFrame.origin.x -= 231;
            self.symptomsToogleTableVIew.frame = tableFrame;
            [self.view sendSubviewToBack:self.symptomsToogleTableVIew];
        }
    }];
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    UITableView *scrolledTableView = (UITableView*)scrollView;
    if(scrolledTableView == self.symptomsToogleTableVIew)
        self.patientAppointmentsTableView.contentOffset = scrolledTableView.contentOffset;
    else if(scrolledTableView == self.patientAppointmentsTableView)
        self.symptomsToogleTableVIew.contentOffset = scrolledTableView.contentOffset;
}

@end
