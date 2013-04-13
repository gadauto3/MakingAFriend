//
//  DialogueManager.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "DialogueManager.h"

@interface DialogueManager ()

@property (nonatomic, strong) NSMutableArray *allDialogue;

@end

@implementation DialogueManager


- (NSArray *)allDialogueForBoy
{
    NSString * f = @"foo";
    NSString * b = @"bar";
    NSString * z = @"baz";
    self.allDialogue = [NSMutableArray arrayWithObjects:f,b,z,nil];
    return self.allDialogue;
}

- (NSArray *)randomOptionsForBoy:(int)numToGet
{
//	self.allDialogueForBoy
	return nil;
}

- (NSArray *)selectedDialogueByBoy
{
	return nil;
}


@end
