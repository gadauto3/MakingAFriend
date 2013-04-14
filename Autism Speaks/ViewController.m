//
//  ViewController.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//

#import "ViewController.h"

#import "BackgroundVC.h"
#import "Utilities.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)jumpToGame:(id)sender
{
	BackgroundVC *gameVC = [[BackgroundVC alloc] init];
	[self presentViewController:gameVC animated:NO completion:^{
//		[Utilities playSoundNamed:SFX_OH_YEAH];
	}];
}


#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	[self performSelector:@selector(jumpToGame:) withObject:nil afterDelay:0.3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
