//
//  DialogueManager.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "DialogueManager.h"

@interface DialogueManager ()

@property (nonatomic, strong) NSMutableDictionary *allDialogue;
@property (nonatomic, strong) NSMutableDictionary *dialogueOptions;
@property (nonatomic, strong) NSMutableDictionary *contextToDialogueDictionary;

@end

@implementation DialogueManager


- (NSDictionary *)resultsForHisChat:(NSString *)hisChat
{
	NSDictionary *result = [self.allDialogue objectForKey:hisChat];
	NSParameterAssert(result);
	return result;
}

- (NSArray *)allDialogueForBoy
{    
    return self.allDialogue.allKeys;
}

- (NSDictionary *)randomOptionsForBoy:(int)numToGet
{
    self.dialogueOptions = [NSMutableArray array];
    
    
    
    
    
   // NSMutableArray *shuffled = [NSMutableArray array];

   
   // NSUInteger arcount = [_allDialogue count]; // gives a random array
    //return count;
    //if (arcount > 0) {
        //[shuffled addObject:[self.dialogueOptions objectAtIndex:0]];
        
        //NSUInteger j;
       // for (NSUInteger i = 1; i < arcount; ++i) {
       //     j = arc4random() % i;
            //[shuffled addObject:[self.dialogueOptions objectAtIndex:j]];
      //      [shuffled replaceObjectAtIndex:j
            //                    withObject:[self.dialogueOptions objectAtIndex:i]];
       // }
        
        
        
        //      return shuffled; // still autoreleased
    //}
    
    // numbtoget specifys the number to be in final array, must generate
    //if (numToGet != 0){
    //    for (int count = 0; count <= numToGet; count++) {
            
        // pass that array index into array for output
    return self.dialogueOptions;
}

- (NSArray *)selectedDialogueByBoy
{
	return nil;
}

- (void)setupDialogue
{
	
	self.allDialogue = [NSMutableDictionary dictionary];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
			   KEY_HER_THOUGHT: @"Hmmm, interesting....",
				 KEY_HER_SOUND: @"OhYeah",
				  KEY_HER_FACE: @"neutral.jpg",
				  KEY_HER_CHAT: @"Hmmm, interesting...." }
						forKey:@ "Hi"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @5,
				 KEY_HER_SOUND: @"Hmmm, interesting....1",
				  KEY_HER_FACE: @"neutral.jpg",
				  KEY_HER_CHAT: @"Hmmm, interesting....1" }
						forKey:@ "I love you"];
	[self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @5,
			   KEY_HER_THOUGHT: @"Hmmm, interesting....6",
				 KEY_HER_SOUND: @"Hmmm, interesting....6",
				  KEY_HER_FACE: @"smile.png",
				  KEY_HER_CHAT: @"Hmmm, interesting....6" }
						forKey:@ "You're awesome"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @5,
			   KEY_HER_THOUGHT: @"Hmmm, interesting....2",
				 KEY_HER_SOUND: @"Hmmm, interesting....2",
				  KEY_HER_FACE: @"test-oval.jpg",
				  KEY_HER_CHAT: @"Hmmm, interesting....2" }
						forKey:@ "Don't you just love this café?"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @5,
				 KEY_HER_SOUND: @"Hmmm, interesting....3",
				  KEY_HER_FACE: @"bored.png",
				  KEY_HER_CHAT: @"Hmmm, interesting....3" }
						forKey:@ "Hi, I live with my mom"];
}

- (NSArray *)dialogueOptionsForContext:(NSString *)context
{
	return [self.contextToDialogueDictionary objectForKey:context];
}

- (void)setupContextDictionary
{
	self.contextToDialogueDictionary = [NSMutableDictionary dictionary];
	
	[self.contextToDialogueDictionary setValue:@[
	 @"Hi", @"I love you", @"You're awesome", @"Don't you just love this café?", @"Hi, I live with my mom"
	 ] forKey:@"Just Started"];
	[self.contextToDialogueDictionary setValue:@[
	 @"Hi", @"I love you"
	 ] forKey:@"TEST"];
}

- (id)init
{
    self = [super init];
    if (self) {
        [self setupDialogue];
        [self setupContextDictionary];
    }
    return self;
}


@end
