//
//  SCSDetailViewController.m
//  SCSStoryBoardFun
//
//  Created by Bill Calkins on 11/21/12.
//  Copyright (c) 2012 Bill Calkins. All rights reserved.
//

#import "SCSDetailViewController.h"

@interface SCSDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayLetterLabel;
@end

@implementation SCSDetailViewController

@synthesize delegate, displayLetter;
 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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

- (IBAction)dismissButtonPress:(UIButton *)sender
{
    [self.delegate userDidDismissDetailViewController:self];
    
}


@end
