//
//  ScheduleCell.m
//  Test
//
//  Created by Imran Ali on 3/8/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import "ScheduleCell.h"

@implementation ScheduleCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)layoutSubviews
{
    self.appointmentTime.layer.borderColor = [UIColor blueColor].CGColor;
    self.appointmentTime.layer.borderWidth = 2.0;
    self.appoinementINS.layer.borderColor = [UIColor blueColor].CGColor;
    self.appoinementINS.layer.borderWidth = 2.0;
    self.appoinementLastSeen.layer.borderColor = [UIColor blueColor].CGColor;
    self.appoinementLastSeen.layer.borderWidth = 2.0;
    self.appointmentType.layer.borderColor = [UIColor blueColor].CGColor;
    self.appointmentType.layer.borderWidth = 2.0;
    self.appoinementPatientName.layer.borderColor = [UIColor blueColor].CGColor;
    self.appoinementPatientName.layer.borderWidth = 2.0;
}

+ (ScheduleCell *)cellFromNibNamed:(NSString *)nibName {
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:NULL];
    NSEnumerator *nibEnumerator = [nibContents objectEnumerator];
    ScheduleCell *customCell = nil;
    NSObject* nibItem = nil;
    while ((nibItem = [nibEnumerator nextObject]) != nil) {
        if ( [nibItem isKindOfClass: [ScheduleCell class]]) {
            customCell = (ScheduleCell*) nibItem;
            if ([customCell.reuseIdentifier isEqualToString: @"ScheduleCell"]) {
                break; // we have a winner
            }
            else
                customCell = nil;
        }
    }
    return customCell;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_appointmentTime release];
    [_appoinementPatientName release];
    [_appointmentType release];
    [_appoinementINS release];
    [_appoinementLastSeen release];
    [super dealloc];
}
@end
