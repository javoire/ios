//
//  SCDetailViewController.h
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *eventNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *eventDescriptionLabel;
@end
