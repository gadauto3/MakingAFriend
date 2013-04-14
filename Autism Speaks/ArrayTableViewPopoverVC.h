//
//  ArrayTableViewPopoverVC.h
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//

#import "ViewController.h"

@protocol ArrayTableViewPopoverListener

- (void)arrayElementSelected:(NSString *)elementName;

@end

@interface ArrayTableViewPopoverVC : UITableViewController

@property (nonatomic, strong) id<ArrayTableViewPopoverListener> listener;

+ (ArrayTableViewPopoverVC *)makePopoverWithArray:(NSArray *)array fromView:(UIView *)view permittedArrowDirections:(UIPopoverArrowDirection)permittedArrowDirection;

- (void)setArray:(NSArray *)arrayOfStrings;

@end
