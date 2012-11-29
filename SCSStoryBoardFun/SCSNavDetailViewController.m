//
//  SCSNavDetailViewController.m
//  SCSStoryBoardFun
//
//  Created by Bill Calkins on 11/27/12.
//  Copyright (c) 2012 Bill Calkins. All rights reserved.
//

#import "SCSNavDetailViewController.h"

@interface SCSNavDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayLetterLabel;
@end

@implementation SCSNavDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)displayTheLetter:(NSString *)letterToDisplay {
    self.displayLetterLabel.text = letterToDisplay;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.displayLetterLabel.text = self.displayLetter;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
