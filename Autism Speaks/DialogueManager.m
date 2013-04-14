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
//	NSParameterAssert(result);
	return result;
}

- (NSArray *)allDialogueForBoy
{
    return self.allDialogue.allKeys;
}

- (void)setupDialogue
{
	self.allDialogue = [NSMutableDictionary dictionary];
    [self.allDialogue setValue:@{
     //Just Started		Hi	1	neutral.jpg		Hi
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
				  KEY_HER_FACE: @"neutral.jpg",
				  KEY_HER_THOUGHT: @"Hi",
          KEY_CONTEXT: CONTEXT_TRYING_TO_SIT}
						forKey:@ "Hi"];
	//    Just Started		I love you	0	disgust.png	But you don't know me!
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"But you don't know me!",
				  KEY_HER_FACE: @"disgust.png",
          KEY_CONTEXT: CONTEXT_JUST_STARTED }
						forKey:@ "I love you"];
    
    //Just Started		You're awesome	0	bored.png	How would you know?
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"How would you know?",
				  KEY_HER_FACE: @"bored.png",
          KEY_CONTEXT: CONTEXT_JUST_STARTED }
                    
						forKey:@ "You're awesome"];
    
    //Just Started		Don't you just love this café?	1	interested.png		It's okay
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
				  KEY_HER_FACE: @"interested.png",
               KEY_HER_THOUGHT: @"It's okay",
          KEY_CONTEXT: CONTEXT_TRYING_TO_SIT }
						forKey:@ "Don't you just love this café?"];
    
	//Just Started		Hi, I live with my mom	0	surprise.png	That's a weird thing to say!
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"That's a weird thing to say!",
				  KEY_HER_FACE: @"surprise.png",
                 KEY_HER_SOUND: @"woman_gasping",
          KEY_CONTEXT: CONTEXT_JUST_STARTED}
						forKey:@ "Hi, I live with my mom"];
    
    
    
    
    
    
    
    
    //Trying to Sit		Is this seat taken?	1	neutral.jpg		No, it is all yours
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
				  KEY_HER_FACE: @"neutral.jpg",
                  KEY_HER_CHAT: @"No, it is all yours",
          KEY_CONTEXT: CONTEXT_SEATED}
						forKey:@ "Is this seat taken?"];
    //	May I join you?	1	interested.png		Sure, why not
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
				  KEY_HER_FACE: @"interested.png",
                  KEY_HER_CHAT: @"Sure, why not",
          KEY_CONTEXT: CONTEXT_SEATED}
						forKey:@ "May I join you?"];
    //I annex this seat in the name of King Me
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"I wish he had asked to sit down.",
				  KEY_HER_FACE: @"surprise.png",
          KEY_CONTEXT: CONTEXT_SEATED}
						forKey:@ "I annex this seat in the name of King Me"];
    
    //Sit Down
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"That was rude",
				  KEY_HER_FACE: @"surprise.png",
                 KEY_HER_SOUND: @"woman_gasping",
          KEY_CONTEXT: CONTEXT_SEATED}
						forKey:@ "(Sit Down)"];
    

    
    // Seated
    //
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @1,
			   KEY_HER_THOUGHT: @"I like it too!",
				  KEY_HER_FACE: @"interested.png",
     KEY_CONTEXT: CONTEXT_SEATED_FOLLOW_UP}
						forKey:@ "Oh, My Zombie and Me? Great book!"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @2,
			   KEY_HER_THOUGHT: @"It's nice, he's interested in what I think",
				  KEY_HER_FACE: @"smile.png",
                KEY_CONTEXT: CONTEXT_SEATED_FOLLOW_UP}
						forKey:@ "Oh, My Zombie and Me!  How do you like it?"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"I don't get the joke",
				  KEY_HER_FACE: @"bored.png",
                KEY_CONTEXT: CONTEXT_SEATED_FOLLOW_UP}
						forKey:@ "World War Z, what happened to X and Y"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"That's a creepy thing to say",
				  KEY_HER_FACE: @"disgust.png",
                KEY_CONTEXT: CONTEXT_SEATED_FOLLOW_UP}
						forKey:@ "Yours brains look delicious, Rawrrr!"];
    [self.allDialogue setValue:@{
	 KEY_NUM_FRIENDSHIP_POINTS: @0,
			   KEY_HER_THOUGHT: @"...",
				  KEY_HER_FACE: @"surprise.png",
                 KEY_HER_SOUND: @"cricket_chirping",
                KEY_CONTEXT: CONTEXT_SEATED_FOLLOW_UP}
						forKey:@ "Do you like goats?"];
    
    
    
    // Seated Follow Up

    
    [self.allDialogue setValue:@{
     KEY_NUM_FRIENDSHIP_POINTS: @0,
               KEY_HER_THOUGHT: @"Grrr…",
                  KEY_HER_FACE: @"disgust.png",
                    KEY_CONTEXT: @"CONCLUSION"}
                        forKey:@"Don’t bother, everybody dies."];
    
    [self.allDialogue setValue:@{
     KEY_NUM_FRIENDSHIP_POINTS: @2,
                  KEY_HER_FACE: @"smile.png",
                 KEY_HER_SOUND: @"woman_laughing_short",
                  KEY_HER_CHAT: @"Funny",
                    KEY_CONTEXT: @"CONCLUSION"}
                        forKey:@"What do you think a vegan zombie eats?"];
    
    
    [self.allDialogue setValue:@{
     KEY_NUM_FRIENDSHIP_POINTS: @0,
               KEY_HER_THOUGHT: @"Okay, but I didn’t ask.",
                  KEY_HER_FACE: @"smile.png",
                    KEY_CONTEXT: @"CONCLUSION"}
                        forKey:@"I’m lactose intolerant, I can’t drink milk."];
    
    [self.allDialogue setValue:@{
     KEY_NUM_FRIENDSHIP_POINTS: @1,
                  KEY_HER_FACE: @"interested.png",
                  KEY_HER_CHAT: @" Thanks.  I just got it",
                    KEY_CONTEXT: @"CONCLUSION"}
                        forKey:@"That’s a really nice scarf"];
    
//Conclusion
    
    [self.allDialogue setValue:@{
     KEY_NUM_FRIENDSHIP_POINTS: @1,
                  KEY_HER_FACE: @"interested.png",
                  KEY_HER_CHAT: @"You too! I hope to see you again."}
                        forKey:@"You’re awesome!"];
    
    [self.allDialogue setValue:@{
     KEY_NUM_FRIENDSHIP_POINTS: @2,
                  KEY_HER_FACE: @"interested.png",
                  KEY_HER_CHAT: @"Yes, let’s do this again."}
                        forKey:@" Will you be here tomorrow?"];
    
    [self.allDialogue setValue:@{
     KEY_NUM_FRIENDSHIP_POINTS: @0,
               KEY_HER_THOUGHT: @"Strangers shouldn’t ask that.",
                  KEY_HER_FACE: @"interested.png"}
                        forKey:@ "Where do you live?"];
     
     [self.allDialogue setValue:@{
      KEY_NUM_FRIENDSHIP_POINTS: @1,
                   KEY_HER_FACE: @"interested.png",
                   KEY_HER_CHAT: @"Let’s go!"}
                         forKey:@ "Hey, we should check out the movie!"];
    //after
    
    
    
	
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
	
    [self.contextToDialogueDictionary setValue:@[
	 @"Don’t bother, everybody dies.", @"I'm lactose intolerant, I can't drink milk.", @"What do you think a vegan zombie eats?",@"That’s a really nice scarf"
	 ] forKey:CONTEXT_SEATED_FOLLOW_UP];
    
	[self.contextToDialogueDictionary setValue:@[
	 @"You're awesome", @"Will you be here tomorrow?", @"Where do you live?", @"Hey, we should check out the movie"
	 ] forKey:CONCLUSION];
    
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
