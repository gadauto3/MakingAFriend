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
     //Just Started		Hi	1	neutral.jpg		Hi
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
				  KEY_HER_FACE: @"neutral.jpg",
				  KEY_HER_THOUGHT: @"Hi",
          CONTEXT_TRYING_TO_SIT: @"Trying to Sit"}
						forKey:@ "Hi"];
	//    Just Started		I love you	0	disgust.png	But you don't know me!
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"But you don't know me!",
				  KEY_HER_FACE: @"disgust.png",
          CONTEXT_JUST_STARTED: @"Just Started" }
						forKey:@ "I love you"];
    
    //Just Started		You're awesome	0	bored.png	How would you know?
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"How would you know?",
				  KEY_HER_FACE: @"bored.png",
          CONTEXT_JUST_STARTED: @"Just Started" }
                    
						forKey:@ "You're awesome"];
    
    //Just Started		Don't you just love this café?	1	interested.png		It's okay
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
				  KEY_HER_FACE: @"interested.png",
               KEY_HER_THOUGHT: @"It's okay",
          CONTEXT_TRYING_TO_SIT: @"Trying to Sit" }
						forKey:@ "Don't you just love this café?"];
    
	//Just Started		Hi, I live with my mom	0	surprise.png	That's a weird thing to say!
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"That's a weird thing to say!",
				  KEY_HER_FACE: @"surprise.png",
                 KEY_HER_SOUND: @"woman_sighing",
          CONTEXT_JUST_STARTED: @"Just Started"}
						forKey:@ "Hi, I live with my mom"];
    
    
    
    
    
    
    
    
    //Trying to Sit		Is this seat taken?	1	neutral.jpg		No, it is all yours
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
				  KEY_HER_FACE: @"neutral.jpg",
                  KEY_HER_CHAT: @"No, it is all yours",
          CONTEXT_SEATED: @"Seated"}
						forKey:@ "Is this seat taken?"];
    //	May I join you?	1	interested.png		Sure, why not
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
				  KEY_HER_FACE: @"interested.png",
                  KEY_HER_CHAT: @"Sure, why not",
          CONTEXT_SEATED: @"Seated"}
						forKey:@ "May I join you?"];
    //I annex this seat in the name of King Me
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"I wish he had asked to sit down.",
				  KEY_HER_FACE: @"surprise.png",
          CONTEXT_SEATED: @"Seated"}
						forKey:@ "I annex this seat in the name of King Me"];
    
    //Sit Down
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"That was rude",
				  KEY_HER_FACE: @"surprise.png",
                 KEY_HER_SOUND: @"woman_gasp",
          CONTEXT_SEATED: @"Seated"}
						forKey:@ "(Sit Down)"];
    

    
    // Seated
    //
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
			   KEY_HER_THOUGHT: @"I like it too!",
				  KEY_HER_FACE: @"interested.png",
     CONTEXT_SEATED: @"Seated Follow Up"}
						forKey:@ "Oh, My Zombie and Me? Great book!"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @2,
			   KEY_HER_THOUGHT: @"It's nice, he's interested in what I think",
				  KEY_HER_FACE: @"smile.png",
                CONTEXT_SEATED: @"Seated Follow Up"}
						forKey:@ "Oh, My Zombie and Me!  How do you like it?"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"I don't get the joke",
				  KEY_HER_FACE: @"bored.png",
                CONTEXT_SEATED: @"Seated Follow Up"}
						forKey:@ "World War Z, what happened to X and Y"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"That's a creepy thing to say",
				  KEY_HER_FACE: @"disgust.png",
                CONTEXT_SEATED: @"Seated Follow Up"}
						forKey:@ "Yours brains look delicious, Rawrrr!"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"...",
				  KEY_HER_FACE: @"surprise.png",
                 KEY_HER_SOUND: @"cricket_chirping",
                CONTEXT_SEATED: @"Seated Follow Up"}
						forKey:@ "Do you like goats?"];
    
    
    
    // Seated Follow Up
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"That's a weird thing to say!",
				  KEY_HER_FACE: @"surprise.png",
                 KEY_HER_SOUND: @"woman_sighing.aiff",
                  KEY_HER_CHAT: @""}
						forKey:@ "x11"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"That's a weird thing to say!",
				  KEY_HER_FACE: @"surprise.png",
                 KEY_HER_SOUND: @"woman_sighing.aiff",
                  KEY_HER_CHAT: @""}
						forKey:@ "x11"];
    
    
    
    
    
    
    
    
    
    
    
	
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
	 ] forKey:CONTEXT_JUST_STARTED];
    [self.contextToDialogueDictionary setValue:@[
	 @"Is this seat taken?", @"May I join you?", @"I annex this seat in the name of King Me", @"(Sit Down)"
	 ] forKey:CONTEXT_TRYING_TO_SIT];
    [self.contextToDialogueDictionary setValue:@[
	 @"Oh, My Zombie and Me? Great book!", @"Oh, My Zombie and Me!  How do you like it?", @"World War Z, what happened to X and Y", @"Yours brains look delicious, Rawrrr!",@"Do you like goats?"
	 ] forKey:CONTEXT_SEATED];
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
