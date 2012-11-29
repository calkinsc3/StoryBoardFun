//
//  SCSDetailViewController.h
//  SCSStoryBoardFun
//
//  Created by Bill Calkins on 11/21/12.
//  Copyright (c) 2012 Bill Calkins. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SDCDetailViewControllerDelegate;

@interface SCSDetailViewController : UIViewController
@property (strong, nonatomic) NSString *displayLetter;
@property (weak, nonatomic) id<SDCDetailViewControllerDelegate>delegate;
@end

//Protocol used to dismiss controllers in this app
@protocol SDCDetailViewControllerDelegate <NSObject>
- (void)userDidDismissDetailViewController:(SCSDetailViewController *) detailVC;

@end