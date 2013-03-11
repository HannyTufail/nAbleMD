//
//  PatientExamRoomCell.h
//  Test
//
//  Created by Imran Ali on 3/9/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientExamRoomCell : UITableViewCell

@property (retain, nonatomic) IBOutlet UILabel *examRoom;
@property (retain, nonatomic) IBOutlet UILabel *patientName;
@property (retain, nonatomic) IBOutlet UILabel *provider;
@property (retain, nonatomic) IBOutlet UILabel *visitType;
@property (retain, nonatomic) IBOutlet UILabel *timeIn;

+ (PatientExamRoomCell *)cellFromNibNamed:(NSString *)nibName;

@end
