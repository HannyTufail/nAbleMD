//
//  PatientExamRoomCell.m
//  Test
//
//  Created by Imran Ali on 3/9/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import "PatientExamRoomCell.h"

@implementation PatientExamRoomCell

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
    self.examRoom.layer.borderColor = [UIColor blueColor].CGColor;
    self.examRoom.layer.borderWidth = 2.0;
    self.patientName.layer.borderColor = [UIColor blueColor].CGColor;
    self.patientName.layer.borderWidth = 2.0;
    self.provider.layer.borderColor = [UIColor blueColor].CGColor;
    self.provider.layer.borderWidth = 2.0;
    self.visitType.layer.borderColor = [UIColor blueColor].CGColor;
    self.visitType.layer.borderWidth = 2.0;
    self.timeIn.layer.borderColor = [UIColor blueColor].CGColor;
    self.timeIn.layer.borderWidth = 2.0;
}

+ (PatientExamRoomCell *)cellFromNibNamed:(NSString *)nibName {
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:NULL];
    NSEnumerator *nibEnumerator = [nibContents objectEnumerator];
    PatientExamRoomCell *customCell = nil;
    NSObject* nibItem = nil;
    while ((nibItem = [nibEnumerator nextObject]) != nil) {
        if ( [nibItem isKindOfClass: [PatientExamRoomCell class]]) {
            customCell = (PatientExamRoomCell*) nibItem;
            if ([customCell.reuseIdentifier isEqualToString: @"PatientExamRoomCell"]) {
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
    [_examRoom release];
    [_patientName release];
    [_provider release];
    [_visitType release];
    [_timeIn release];
    [super dealloc];
}
@end
