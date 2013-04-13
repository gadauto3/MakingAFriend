//
//  ArrayTableViewPopoverVC.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "ArrayTableViewPopoverVC.h"

@interface ArrayTableViewPopoverVC ()

@property (nonatomic, strong) UIPopoverController *privatePopover;
@property (nonatomic, strong) NSArray *privateArray;

@end

@implementation ArrayTableViewPopoverVC

#pragma mark -

+ (ArrayTableViewPopoverVC *)makePopoverWithArray:(NSArray *)array fromView:(UIView *)view
{
	ArrayTableViewPopoverVC *arrayVC = [[ArrayTableViewPopoverVC alloc] init];
	UIPopoverController *arrayPopover = [[UIPopoverController alloc] initWithContentViewController:arrayVC];
	[arrayPopover setPopoverContentSize:arrayVC.view.frame.size];
    
    [arrayPopover presentPopoverFromRect:view.frame
										 inView:view.superview
					   permittedArrowDirections:UIPopoverArrowDirectionAny
									   animated:YES];
	arrayVC.privatePopover = arrayPopover;
	return arrayVC;
}


#pragma mark - Adjust array

- (void)setArray:(NSArray *)arrayOfStrings
{
	self.privateArray = arrayOfStrings;
	[self.tableView reloadData];
}

#pragma mark - TableView stuff

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.privateArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ArrayCell";
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
	
    // Configure the cell...
    NSString *value = [self.privateArray objectAtIndex:indexPath.row];
	
    cell.textLabel.text = value;
	if (arc4random() % 2 == 0) cell.backgroundColor = [UIColor greenColor];
	
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedElement = [self.privateArray objectAtIndex:indexPath.row];
	
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[NSString stringWithFormat:@"You selected %@!", selectedElement] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
	
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	[self.privatePopover dismissPopoverAnimated:YES];
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
	// Do any additional setup after loading the view.
	
	self.privateArray = @[@"test1", @"test2", @"test3", @"test4"];
	
	NSIndexPath *path = [NSIndexPath indexPathForRow:0 inSection:0];
	UITableViewCell *sizingCell = [self tableView:self.tableView cellForRowAtIndexPath:path];
	
	self.view.frame = CGRectMake(0, 0, sizingCell.frame.size.width, self.privateArray.count * sizingCell.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    self.privateArray = nil;
}

@end
