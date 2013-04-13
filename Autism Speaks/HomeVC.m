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

@property (nonatomic, strong) CharacterVC *boy;

@end

@implementation HomeVC

#pragma mark - Character

- (void)setupCharacter
{
	self.boy = [[CharacterVC alloc] init];
	[self.view addSubview:self.boy.view];
	
	[self.boyBackground addSubview:self.boy.view];
	self.boy.view.frame = CGRectMake(0, 0, self.boyBackground.frame.size.width, self.boyBackground.frame.size.height);
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
