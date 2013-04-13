//
//  CafeVC.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "CafeVC.h"

#import <QuartzCore/QuartzCore.h>

#import "CharacterVC.h"
#import "ArrayTableViewPopoverVC.h"

#import "DialogueManager.h"
#import "DialogueVC.h"

#import "Utilities.h"

@interface CafeVC () <ArrayTableViewPopoverListener>

@property (nonatomic, strong) CharacterVC *boy;
@property (nonatomic, strong) CharacterVC *girl;

@property (nonatomic, strong) ArrayTableViewPopoverVC *dialogue;
@property (nonatomic, strong) DialogueManager *dialogueManager;

@property (nonatomic, strong) UIPopoverController *herThoughtPopover;

@end

@implementation CafeVC

#define TIME_FOR_POINTS		1.4


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
	NSArray *allHisDialogues = [self.dialogueManager dialogueOptionsForContext:self.dialogueManager.currentDialogueContext];
	self.dialogue = [ArrayTableViewPopoverVC makePopoverWithArray:allHisDialogues fromView:self.boyBackground permittedArrowDirections:UIPopoverArrowDirectionLeft];
	self.dialogue.listener = self;
}

- (void)arrayElementSelected:(NSString *)elementName
{
	
	NSDictionary *chatResult = [self.dialogueManager resultsForHisChat:elementName];
	
	NSString *herFaceChange = [chatResult objectForKey:KEY_HER_FACE];
	if (herFaceChange) {
		[self.girl setCharacterImage:herFaceChange];
	}
	
	NSNumber *friendshipPoints = [chatResult objectForKey:KEY_NUM_FRIENDSHIP_POINTS];
	if (friendshipPoints) {
		[self doFriendshipPointsAnimationForNumPoints:friendshipPoints.intValue];
	}
	
	NSString *herThought = [chatResult objectForKey:KEY_HER_THOUGHT];
	if (herThought) {
		[self performSelector:@selector(showHerThought:) withObject:herThought afterDelay:TIME_FOR_POINTS * 1.2];
	}
	
	NSString *herSound = [chatResult objectForKey:KEY_HER_SOUND];
	if (herSound) {
		[Utilities playSoundNamed:herSound];
	}
}

- (void)doFriendshipPointsAnimationForNumPoints:(int)numPoints
{
	self.pointsView.hidden = NO;
	self.pointsView.center = CGPointMake(self.girlBackground.frame.origin.x + self.girlBackground.frame.size.width/2.0, self.girlBackground.frame.origin.y);
	self.pointsView.alpha = 1.0;
	
	self.pointsLabel.text = [NSString stringWithFormat:@"+%d", numPoints];
	
	[UIView animateWithDuration:TIME_FOR_POINTS animations:^{
		self.pointsView.center = self.confidencePointsView.center;
		self.pointsView.alpha = 0.1;
	} completion:^(BOOL finished) {
		self.pointsView.transform = CGAffineTransformIdentity;
		self.pointsView.hidden = YES;
		
		int currPoints = self.confidencePointsLabel.text.intValue;
		int addPoints = self.pointsLabel.text.intValue;
		self.confidencePointsLabel.text = [NSString stringWithFormat:@"%d", currPoints + addPoints];
	}];
}

- (void)showHerThought:(NSString *)herThought
{
	DialogueVC *dialogueVC = [[DialogueVC alloc] init];
	self.herThoughtPopover = [[UIPopoverController alloc] initWithContentViewController:dialogueVC];
	[self.herThoughtPopover setPopoverContentSize:dialogueVC.view.frame.size];
    
    [self.herThoughtPopover presentPopoverFromRect:self.girlBackground.frame
											inView:self.view
						  permittedArrowDirections:UIPopoverArrowDirectionDown
										  animated:YES];
	[dialogueVC setDialogue:herThought];
}

#pragma mark - Changing contexts

- (IBAction)changeContext:(id)sender
{
	self.dialogueManager.currentDialogueContext = @"TEST";
}

- (IBAction)changeHerEyes:(id)sender
{
	self.cafeBackground.image = [UIImage imageNamed:@"coffee-shop.png"];
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
	self.dialogueManager = [[DialogueManager alloc] init];
	self.dialogueManager.currentDialogueContext = CONTEXT_JUST_STARTED;
	
	self.pointsView.hidden = YES;
	self.pointsView.layer.cornerRadius = 50.0;
	self.confidencePointsView.layer.cornerRadius = 30.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
