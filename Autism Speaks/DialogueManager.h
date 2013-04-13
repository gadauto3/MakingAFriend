//
//  DialogueManager.h
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DialogueManager : NSObject

- (NSArray *)allDialogueForBoy;
- (NSArray *)randomOptionsForBoy;
- (NSArray *)selectedDialogueByBoy;

@end
