//
//  ViewController.m
//  SamplesObjC
//
//  Created by Shin Yamamoto on 2018/12/07.
//  Copyright © 2018 Shin Yamamoto. All rights reserved.
//

#import "ViewController.h"
@import FloatingPanel;

/* --- Importing Swift into Objective-C -- */
#import "SamplesObjC-Swift.h"
@class FloatingPanelAdapter;
/* --------------------------------------- */

@interface ViewController ()
@property FloatingPanelAdapter *fpAdapter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.fpAdapter = [[FloatingPanelAdapter alloc] init];
//    [self.fpAdapter addPanelWithVc:self];

    FloatingPanelController *fpc = [[FloatingPanelController alloc] init];
    [fpc setContentViewController:nil];
    [fpc trackScrollView:nil];
    [fpc setDelegate:self];
    [fpc show:true completion:nil];
    [fpc hide:true completion:nil];
    [fpc addPanelToParent:self belowView:nil animated:true];
    [fpc removePanelFromParent:true completion:nil];
    [fpc moveTo:FloatingPanelPositionTip animated:true completion:nil];
}

@end
