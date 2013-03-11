//
//  SymptomsCell.h
//  Test
//
//  Created by Imran Ali on 3/9/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SymptomsCell : UITableViewCell

@property (retain, nonatomic) IBOutlet UIImageView *vit;
@property (retain, nonatomic) IBOutlet UIImageView *ch;
@property (retain, nonatomic) IBOutlet UIImageView *or;

+ (SymptomsCell *)cellFromNibNamed:(NSString *)nibName;

@end
