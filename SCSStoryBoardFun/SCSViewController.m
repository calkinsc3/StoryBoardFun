//
//  SCSViewController.m
//  SCSStoryBoardFun
//
//  Created by Bill Calkins on 11/21/12.
//  Copyright (c) 2012 Bill Calkins. All rights reserved.
//

#import "SCSViewController.h"
#import "SCSDetailViewController.h"

@implementation SCSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sampleAButtonPress:(UIButton *)sender
{
    SCSDetailViewController *detailedVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailVC"];
    detailedVC.displayLetter = @"A";
    detailedVC.delegate = self;
    [self presentViewController:detailedVC animated:YES completion:nil];
}

//This is a method defined on the protocol/interface.
- (void)userDidDismissDetailViewController:(SCSDetailViewController *)detailVC {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SCSDetailViewController *detailVC = segue.destinationViewController;
    detailVC.delegate = self;
    
    if ([segue.identifier isEqualToString:@"segueB"]) {
        detailVC.displayLetter = @"B";
    }
    else if ([segue.identifier isEqualToString:@"segueC"]){
        detailVC.displayLetter = @"C";
    }
}


@end
