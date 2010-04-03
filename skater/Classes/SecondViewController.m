//
//  SecondViewController.m
//  skater
//
//  Created by jaswu on 4/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

@synthesize theList;
@synthesize appDelegate;
@synthesize trickViewController;
@synthesize fromHomeScreen;
@synthesize sortMode;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	sortMode = 0; // initially set to sort by difficulty
	appDelegate = (skaterAppDelegate *)[[UIApplication sharedApplication] delegate];
	trickViewController = [[TrickViewController alloc] initWithNibName:@"TrickView" bundle:nil];
	[theList setDelegate:self];
	[theList setDataSource:self];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	NSLog(@"%d", fromHomeScreen);
	if (fromHomeScreen) {
		self.navigationItem.prompt = @"Select the trick you wish to watch.";
		fromHomeScreen = FALSE;
	}
	[theList deselectRowAtIndexPath:[theList indexPathForSelectedRow] animated:NO];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (IBAction)chooseMode:(id)sender {
	sortMode = [sender selectedSegmentIndex];
	[theList reloadData];
	[theList setContentOffset:CGPointMake(0, 0) animated:NO];
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	if (sortMode == 0) {
		return 5;
	} else {
		return 6;
	}
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	if (sortMode == 0) { // sort by difficulty
		if (section == 0) {
			return [appDelegate.oneStar count];
		} else if (section == 1) {
			return [appDelegate.twoStar count];
		} else if (section == 2) {
			return [appDelegate.threeStar count];
		} else if (section == 3) {
			return [appDelegate.fourStar count];
		} else if (section == 4) {
			return [appDelegate.fiveStar count];
		}
	} else if (sortMode == 1) { // sort by type
		if (section == 0) {
			return [appDelegate.aerials count];
		} else if (section == 1) {
			return [appDelegate.flips count];
		} else if (section == 2) {
			return [appDelegate.freestyle count];
		} else if (section == 3) {
			return [appDelegate.grinds count];
		} else if (section == 4) {
			return [appDelegate.lip count];
		} else if (section == 5) {
			return [appDelegate.manuals count];
		}
	}
	return 0;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
		[cell setAccessoryType:UITableViewCellAccessoryDetailDisclosureButton];
    }
    
    // Set up the cell...
	NSString *trick;
	if (sortMode == 0) { // sort by difficulty
		if (indexPath.section == 0) {
			trick = [appDelegate.oneStar objectAtIndex:indexPath.row];
		} else if (indexPath.section == 1) {
			trick = [appDelegate.twoStar objectAtIndex:indexPath.row];
		} else if (indexPath.section == 2) {
			trick = [appDelegate.threeStar objectAtIndex:indexPath.row];
		} else if (indexPath.section == 3) {
			trick = [appDelegate.fourStar objectAtIndex:indexPath.row];
		} else if (indexPath.section == 4) {
			trick = [appDelegate.fiveStar objectAtIndex:indexPath.row];
		}
		NSArray *info = [appDelegate.trickInfo objectForKey:trick];
		[cell.textLabel setText:trick];
		[cell.detailTextLabel setText:[info objectAtIndex:0]];
	} else if (sortMode == 1) { // sort by type
		if (indexPath.section == 0) {
			trick = [appDelegate.aerials objectAtIndex:indexPath.row];
		} else if (indexPath.section == 1) {
			trick = [appDelegate.flips objectAtIndex:indexPath.row];
		} else if (indexPath.section == 2) {
			trick = [appDelegate.freestyle objectAtIndex:indexPath.row];
		} else if (indexPath.section == 3) {
			trick = [appDelegate.grinds objectAtIndex:indexPath.row];
		} else if (indexPath.section == 4) {
			trick = [appDelegate.lip objectAtIndex:indexPath.row];
		} else if (indexPath.section == 5) {
			trick = [appDelegate.manuals objectAtIndex:indexPath.row];
		}
		NSArray *info = [appDelegate.trickInfo objectForKey:trick];
		[cell.textLabel setText:trick];
		[cell.detailTextLabel setText:[info objectAtIndex:1]];
	}
	
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	if (sortMode == 0) { // sort by difficulty
		if (section == 0) {
			return @"One Star";
		} else if (section == 1) {
			return @"Two Stars";
		} else if (section == 2) {
			return @"Three Stars";
		} else if (section == 3) {
			return @"Four Stars";
		} else if (section == 4) {
			return @"Five Stars";
		}
	} else if (sortMode == 1) { // sort by type
		if (section == 0) {
			return @"Aerials";
		} else if (section == 1) {
			return @"Flips";
		} else if (section == 2) {
			return @"Freestyle Tricks";
		} else if (section == 3) {
			return @"Grinds";
		} else if (section == 4) {
			return @"Lip Tricks";
		} else if (section == 5) {
			return @"Manuals";
		}
	}
	return @"";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
	trickViewController.trickName = [theList cellForRowAtIndexPath:indexPath].textLabel.text;	
	[self.navigationController pushViewController:trickViewController animated:YES];
}

- (void)dealloc {
    [super dealloc];
	[theList release];
	[appDelegate release];
	[trickViewController release];
}


@end
