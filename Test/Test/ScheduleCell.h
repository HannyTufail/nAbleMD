//
//  ScheduleCell.h
//  Test
//
//  Created by Imran Ali on 3/8/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleCell : UITableViewCell



@property (retain, nonatomic) IBOutlet UILabel *appointmentTime;
@property (retain, nonatomic) IBOutlet UILabel *appoinementPatientName;
@property (retain, nonatomic) IBOutlet UILabel *appointmentType;
@property (retain, nonatomic) IBOutlet UILabel *appoinementINS;
@property (retain, nonatomic) IBOutlet UILabel *appoinementLastSeen;

+ (ScheduleCell *)cellFromNibNamed:(NSString *)nibName;

@end
