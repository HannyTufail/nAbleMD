//
//  CustomTableViewPopoverControllerViewController.h
//  Test
//
//  Created by Imran Ali on 3/7/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PopOverSelecteRowDelegate <NSObject>

- (void)popoverDidSelectObject:(NSString *)object;

@end

@interface CustomTableViewPopoverControllerViewController : UITableViewController
{
    NSMutableArray *dataSource;
    id delegate;
}

@property (nonatomic, retain) NSMutableArray *dataSource;
@property (nonatomic, assign) id delegate;

@end
