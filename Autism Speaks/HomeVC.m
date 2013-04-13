//
//  HomeVC.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "HomeVC.h"

#import "CharacterVC.h"

@interface HomeVC ()

@property (nonatomic, strong) CharacterVC *boyVC;

@end

@implementation HomeVC

#pragma mark - Character

- (void)setupCharacter
{
	self.boyVC = [[CharacterVC alloc] init];
	[self.view addSubview:self.boyVC.view];
}


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
    // Do any additional setup after loading the view from its nib.
	
	[self setupCharacter];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
