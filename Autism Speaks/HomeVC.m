//
//  HomeVC.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "HomeVC.h"

#import "CharacterVC.h"
#import "ArrayTableViewPopoverVC.h"

@interface HomeVC () <ArrayTableViewPopoverListener>

@property (nonatomic, strong) CharacterVC *boy;
@property (nonatomic, strong) ArrayTableViewPopoverVC *dialogue;


@end

@implementation HomeVC

#pragma mark - Character

- (void)setupCharacter
{
	self.boy = [[CharacterVC alloc] init];
	[self.view addSubview:self.boy.view];
	
	[self.boyBackground addSubview:self.boy.view];
	self.boy.view.frame = CGRectMake(0, 0, self.boyBackground.frame.size.width, self.boyBackground.frame.size.height);
	
	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showPictureOptions)];
	[self.boyBackground addGestureRecognizer:tap];
	self.boyBackground.userInteractionEnabled = YES;
	
	[self.boy setCharacterImage:@"fright-dirty.png"];
}

- (void)showPictureOptions
{
	NSArray *faces = @[@"fright-clean.png", @"fright-dirty.png", @"normal-clean.png", @"normal-dirty.png", @"sad-dirty.png", @"sad.png", @"smile.png"];
	self.dialogue = [ArrayTableViewPopoverVC makePopoverWithArray:faces fromView:self.boyBackground permittedArrowDirections:UIPopoverArrowDirectionAny];
	self.dialogue.listener = self;
}

- (void)arrayElementSelected:(NSString *)elementName
{
	// Set element to picture of character
	[self.boy setCharacterImage:elementName];
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
	
//	[self performSelector:@selector(showPictureOptions) withObject:nil afterDelay:2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
