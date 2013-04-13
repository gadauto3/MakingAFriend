//
//  CafeVC.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "CafeVC.h"

#import "CharacterVC.h"
#import "ArrayTableViewPopoverVC.h"

@interface CafeVC ()

@property (nonatomic, strong) CharacterVC *boy;
@property (nonatomic, strong) CharacterVC *girl;

@property (nonatomic, strong) ArrayTableViewPopoverVC *dialogue;

@end

@implementation CafeVC


- (void)setupCharacters
{
	self.boy = [[CharacterVC alloc] init];
	self.girl = [[CharacterVC alloc] init];
	
	[self.boyBackground addSubview:self.boy.view];
	self.boy.view.frame = CGRectMake(0, 0, self.boyBackground.frame.size.width, self.boyBackground.frame.size.height);
	[self.girlBackground addSubview:self.girl.view];
	self.girl.view.frame = CGRectMake(0, 0, self.girlBackground.frame.size.width, self.girlBackground.frame.size.height);
}

- (void)setupDialogue
{
	self.dialogue = [ArrayTableViewPopoverVC makePopoverWithArray:nil fromView:self.boyBackground];
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
	
	[self setupCharacters];
	
//	[self performSelector:@selector(setupDialogue) withObject:nil afterDelay:2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
