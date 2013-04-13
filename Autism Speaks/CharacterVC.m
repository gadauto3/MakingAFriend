//
//  CharacterVC.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "CharacterVC.h"

@interface CharacterVC ()

@end

@implementation CharacterVC

#pragma mark - Image manipulation
- (void)setCharacterImage:(NSString *)imageName
{
	UIImage *faceImage = [UIImage imageNamed:imageName];
	NSParameterAssert(faceImage);
	self.faceImageView.image = faceImage;
}

#pragma mark - Lifecycle

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


#pragma mark - Face substitute test

- (void)showAHumanFace
{
	UIImage *face = [UIImage imageNamed:@"dude.jpg"];
	UIImage *ovalMask = [UIImage imageNamed:@"oval.jpg"];
	UIImage *maskedImage = [self maskImage:face withMask:ovalMask];
	self.faceImageView.image = maskedImage;
}

- (UIImage*) maskImage:(UIImage *)image withMask:(UIImage *)maskImage {
	
	CGImageRef maskRef = maskImage.CGImage;
	
	CGImageRef mask = CGImageMaskCreate(CGImageGetWidth(maskRef),
										CGImageGetHeight(maskRef),
										CGImageGetBitsPerComponent(maskRef),
										CGImageGetBitsPerPixel(maskRef),
										CGImageGetBytesPerRow(maskRef),
										CGImageGetDataProvider(maskRef), NULL, false);
	
	CGImageRef masked = CGImageCreateWithMask([image CGImage], mask);
	return [UIImage imageWithCGImage:masked];
	
}

@end
