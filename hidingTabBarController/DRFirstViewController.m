//
//  DRFirstViewController.m
//  hidingTabBarController
//
//  Created by Daniel Rueda Jimenez on 8/16/12.
//  Copyright (c) 2012 Planet Media. All rights reserved.
//

#import "DRFirstViewController.h"

@interface DRFirstViewController ()

@end

@implementation DRFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
