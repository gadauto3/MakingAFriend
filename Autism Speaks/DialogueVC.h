//
//  DialogueVC.h
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DialogueVC : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *dialogueLabel;

- (void)setDialogue:(NSString *)dialogueText;

@end
