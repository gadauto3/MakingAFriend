//
//  Utilities.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "Utilities.h"

#import <AudioToolbox/AudioToolbox.h>

@implementation Utilities

+(void) playSoundNamed:(NSString *)soundName {
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:soundName ofType:@"aiff"];
	if (soundPath == nil) return;
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
    AudioServicesPlaySystemSound (soundID);
}

@end
