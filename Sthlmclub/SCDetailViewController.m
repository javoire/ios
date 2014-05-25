//
//  SCDetailViewController.m
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import "SCDetailViewController.h"

@interface SCDetailViewController ()
- (void)configureView;
@end

@implementation SCDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.eventDescriptionLabel.text = [self.detailItem description];
        self.eventNameLabel.text = [self.detailItem name];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.eventDescriptionLabel.numberOfLines = 0;
    self.eventNameLabel.numberOfLines = 0;

    [self.eventNameLabel setFont:[UIFont fontWithName:@"Oswald-Bold" size:20]];
    [self.eventDescriptionLabel setFont:[UIFont fontWithName:@"OpenSans-Light" size:12]];

    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
