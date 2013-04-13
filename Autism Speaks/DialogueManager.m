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
    [self.dialogueOptions setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....",
                     KEY_HER_SOUND: @"Hmmm, interesting....",
                      KEY_HER_FACE: @"disgust.png",
                      KEY_HER_CHAT: @"Hmmm, interesting...." }
                            forKey:@ "0"];
    [self.dialogueOptions setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....",
                     KEY_HER_SOUND: @"Hmmm, interesting....",
                      KEY_HER_FACE: @"neutral.jpg",
                      KEY_HER_CHAT: @"Hmmm, interesting...." }
                            forKey:@ "1"];
    [self.dialogueOptions setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....",
                     KEY_HER_SOUND: @"Hmmm, interesting....",
                      KEY_HER_FACE: @"test-oval.jpg",
                      KEY_HER_CHAT: @"Hmmm, interesting...." }
                            forKey:@ "2"];
    [self.dialogueOptions setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....",
                     KEY_HER_SOUND: @"Hmmm, interesting....",
                      KEY_HER_FACE: @"bored.png",
                      KEY_HER_CHAT: @"Hmmm, interesting...." }
                            forKey:@ "3"];
    [self.dialogueOptions setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....",
                     KEY_HER_SOUND: @"Hmmm, interesting....",
                      KEY_HER_FACE: @"interested.png",
                      KEY_HER_CHAT: @"Hmmm, interesting...." }
                            forKey:@ "4"];
    [self.dialogueOptions setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....",
                     KEY_HER_SOUND: @"Hmmm, interesting....",
                      KEY_HER_FACE: @"surprise.png",
                      KEY_HER_CHAT: @"Hmmm, interesting...." }
                            forKey:@ "5"];
    [self.dialogueOptions setValue:@{
         KEY_NUM_FRIENDSHIP_POINTS: @5,
                   KEY_HER_THOUGHT: @"Hmmm, interesting....",
                     KEY_HER_SOUND: @"Hmmm, interesting....",
                      KEY_HER_FACE: @"smile.png",
                      KEY_HER_CHAT: @"Hmmm, interesting...." }
                            forKey:@ "6"];
    
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
<<<<<<< HEAD
//        [self.dialogueOptions insertObject:[shuffled objectAtIndex:count] atIndex:count];
        }
    }
    
=======
    //    [self.dialogueOptions insertObject:[shuffled objectAtIndex:count] atIndex:count];
    //    }
    //}

>>>>>>> I have to put commit messages in...
    return self.dialogueOptions;
}

- (NSArray *)selectedDialogueByBoy
{
	return nil;
}


@end
