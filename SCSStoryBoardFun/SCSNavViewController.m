//
//  SCSNavViewController.m
//  SCSStoryBoardFun
//
//  Created by Bill Calkins on 11/27/12.
//  Copyright (c) 2012 Bill Calkins. All rights reserved.
//

#import "SCSNavViewController.h"
#import "SCSNavDetailViewController.h"

@interface SCSNavViewController ()
@property (strong, nonatomic) SCSNavDetailViewController *detailVC;
@end

@implementation SCSNavViewController

//@synthesize detailVC;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)sampleDPressed:(UIButton *)sender {
    [self.detailVC displayTheLetter:@"D"];
}

- (IBAction)sampleEPressed:(UIButton *)sender {
    [self.detailVC displayTheLetter:@"E"];
    
}

- (IBAction)sampleFPressed:(UIButton *)sender {
    [self.detailVC displayTheLetter:@"F"];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SCSNavDetailViewController *detailVC = segue.destinationViewController;
    NSString *segueName = [segue identifier];
    detailVC.displayLetter = [segueName substringFromIndex:[segueName length]-1];
}

@end
