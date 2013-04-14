//
//  DialogueManager.h
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KEY_NUM_FRIENDSHIP_POINTS		@"friendship points"
#define KEY_HER_THOUGHT				@"her thoughts"
#define KEY_HER_SOUND                @"Sound she makes"
#define KEY_HER_FACE                @"Face"
//disgust.png	neutral.jpg	test-oval.jpg bored.png	interested.png	surprise.png smile.png
#define KEY_HER_CHAT                @"Her Chat bubble"
#define KEY_CONTEXT                 @"next context"


#define CONTEXT_JUST_STARTED		@"Just Started"
#define CONTEXT_TRYING_TO_SIT		@"Trying to sit"
#define CONTEXT_SEATED		@"Seated"
#define CONTEXT_SEATED_FOLLOW_UP		@"Seated Follow Up"



@interface DialogueManager : NSObject

@property (nonatomic, strong) NSString *currentDialogueContext;

- (NSArray *)allDialogueForBoy;
- (NSArray *)randomOptionsForBoy:(int)numToGet;
- (NSArray *)selectedDialogueByBoy;

- (NSDictionary *)resultsForHisChat:(NSString *)hisChat;
- (NSArray *)dialogueOptionsForContext:(NSString *)context;

@end
