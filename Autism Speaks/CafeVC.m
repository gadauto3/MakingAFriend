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

#import "DialogueManager.h"

@interface CafeVC () <ArrayTableViewPopoverListener>

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
	
	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(setupDialogue)];
	[self.boyBackground addGestureRecognizer:tap];
	self.boyBackground.userInteractionEnabled = YES;
}

- (void)setupDialogue
{
	self.dialogue = [ArrayTableViewPopoverVC makePopoverWithArray:@[@"hisChat"] fromView:self.boyBackground];
	self.dialogue.listener = self;
}

- (void)arrayElementSelected:(NSString *)elementName
{
	NSDictionary *chatResult = @{KEY_NUM_HER_THOUGHT: @"bored.png", KEY_NUM_FRIENDSHIP_POINTS:@3};
	
	NSString *herFaceChange = [chatResult objectForKey:KEY_NUM_HER_THOUGHT];
	if (herFaceChange) {
		[self.girl setCharacterImage:herFaceChange];
	}
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
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
