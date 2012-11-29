//
//  SCSNavDetailViewController.h
//  SCSStoryBoardFun
//
//  Created by Bill Calkins on 11/27/12.
//  Copyright (c) 2012 Bill Calkins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCSNavDetailViewController : UIViewController
@property (strong, nonatomic) NSString *displayLetter;
-(void)displayTheLetter:(NSString *)letterToDisplay;
@end
