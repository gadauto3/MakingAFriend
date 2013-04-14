//
//  DialogueVC.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//

#import "DialogueVC.h"

@interface DialogueVC ()

@end

@implementation DialogueVC
- (void)setDialogue:(NSString *)dialogueText
{
	self.dialogueLabel.text = dialogueText;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
