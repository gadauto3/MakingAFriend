//
//  DialogueManager.h
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KEY_NUM_FRIENDSHIP_POINTS		@"friendship points"
#define KEY_NUM_HER_THOUGHT				@"her thoughts"

@interface DialogueManager : NSObject

- (NSArray *)allDialogueForBoy;
- (NSArray *)randomOptionsForBoy:(int)numToGet;
- (NSArray *)selectedDialogueByBoy;

- (NSDictionary *)resultsForHisChat:(NSString *)hisChat;

@end
