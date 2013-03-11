//
//  SymptomsCell.m
//  Test
//
//  Created by Imran Ali on 3/9/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import "SymptomsCell.h"

@implementation SymptomsCell

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
    self.vit.layer.borderColor = [UIColor blueColor].CGColor;
    self.vit.layer.borderWidth = 2.0;
    self.ch.layer.borderColor = [UIColor blueColor].CGColor;
    self.ch.layer.borderWidth = 2.0;
    self.or.layer.borderColor = [UIColor blueColor].CGColor;
    self.or.layer.borderWidth = 2.0;
}

+ (SymptomsCell *)cellFromNibNamed:(NSString *)nibName {
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:NULL];
    NSEnumerator *nibEnumerator = [nibContents objectEnumerator];
    SymptomsCell *customCell = nil;
    NSObject* nibItem = nil;
    while ((nibItem = [nibEnumerator nextObject]) != nil) {
        if ( [nibItem isKindOfClass: [SymptomsCell class]]) {
            customCell = (SymptomsCell*) nibItem;
            if ([customCell.reuseIdentifier isEqualToString: @"SymptomsCell"]) {
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
    [_vit release];
    [_ch release];
    [_or release];
    [super dealloc];
}
@end
