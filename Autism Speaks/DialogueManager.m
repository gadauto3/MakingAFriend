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
<<<<<<< HEAD
{    
=======
{
	self.allDialogue = [NSMutableDictionary dictionary];
    [self.allDialogue setValue:@{
     //Just Started		Hi	1	neutral.jpg		Hi
         KEY_NUM_FRIENDSHIP_POINTS: @1,
                   KEY_HER_THOUGHT: @"",
                     KEY_HER_SOUND: @"",
                      KEY_HER_FACE: @"neutral.jpg",
                      KEY_HER_CHAT: @"Hi" }
                            forKey:@ "Hi"];
//    Just Started		I love you	0	disgust.png	But you don't know me!
    [self.allDialogue setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @0,
                   KEY_HER_THOUGHT: @"But you don't know me!",
                     KEY_HER_SOUND: @"",
                      KEY_HER_FACE: @"disgust.png",
                      KEY_HER_CHAT: @"" }
                            forKey:@ "I love you"];
    //Just Started		You're awesome	0	bored.png	How would you know?
    [self.allDialogue setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @0,
                   KEY_HER_THOUGHT: @"How would you know?",
                     KEY_HER_SOUND: @"",
                      KEY_HER_FACE: @"bored.png",
                      KEY_HER_CHAT: @"" }
                            forKey:@ "You're awesome"];
    
    //Just Started		Don't you just love this café?	1	interested.png		It's okay
    [self.allDialogue setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @1,
                   KEY_HER_THOUGHT: @"",
                     KEY_HER_SOUND: @"",
                      KEY_HER_FACE: @"interested.png",
                      KEY_HER_CHAT: @"It's okay" }
                            forKey:@ "Don't you just love this café?"];
    
//Just Started		Hi, I live with my mom	0	surprise.png	That's a weird thing to say!
    [self.allDialogue setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @0,
                   KEY_HER_THOUGHT: @"That's a weird thing to say!",
                     KEY_HER_SOUND: @"",
                      KEY_HER_FACE: @"surprise.png",
                      KEY_HER_CHAT: @"" }
                            forKey:@ "Hi, I live with my mom"];
    [self.allDialogue setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....5",
                     KEY_HER_SOUND: @"Hmmm, interesting....5",
                      KEY_HER_FACE: @"surprise.png",
                      KEY_HER_CHAT: @"Hmmm, interesting....5" }
                            forKey:@ "5"];
    [self.allDialogue setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....6",
                     KEY_HER_SOUND: @"Hmmm, interesting....6",
                      KEY_HER_FACE: @"smile.png",
                      KEY_HER_CHAT: @"Hmmm, interesting....6" }
                            forKey:@ "6"];
    
>>>>>>> add dictrionary
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
