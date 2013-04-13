//
//  BackgroundVC.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "BackgroundVC.h"

#import "HomeVC.h"
#import "CafeVC.h"

@interface BackgroundVC ()

@property (nonatomic, strong) HomeVC *homeVC;
@property (nonatomic, strong) CafeVC *cafeVC;

@end

@implementation BackgroundVC

#pragma mark - Lifecycle

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
	
	self.homeVC	= [[HomeVC alloc] init];
	[self.scrollView addSubview:self.homeVC.view];
	
	self.cafeVC = [[CafeVC alloc] init];
	CGRect cafeFrame = self.cafeVC.view.frame;
	cafeFrame.origin.x = self.homeVC.view.frame.size.width;
	self.cafeVC.view.frame = cafeFrame;
	[self.scrollView addSubview:self.cafeVC.view];
	
	self.scrollView.contentSize = CGSizeMake(self.homeVC.view.frame.size.width + self.cafeVC.view.frame.size.width, MAX(self.homeVC.view.frame.size.height, self.cafeVC.view.frame.size.height));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end