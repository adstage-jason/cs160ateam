//
//  FirstViewController.m
//  skater
//
//  Created by Annette Trujillo on 3/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

@synthesize appDelegate;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	appDelegate = (skaterAppDelegate *)[[UIApplication sharedApplication] delegate];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

<<<<<<< .mine
- (IBAction)watchVideo:(id)sender {
	//SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
	appDelegate.listPrompt = 1;
	[self.tabBarController setSelectedIndex:1];
	//[self.navigationController pushViewController:secondViewController animated:YES];
	//[secondViewController release];	
}
=======
- (IBAction)watchVideo:(id)sender {
	SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
	secondViewController.fromHomeScreen = TRUE;
	NSLog(@"%d", secondViewController.fromHomeScreen);
	[self.navigationController pushViewController:secondViewController animated:YES];
	[secondViewController release];	
	[self.tabBarController setSelectedIndex:1];
}
>>>>>>> .r4

- (IBAction)shareVideo:(id)sender {
	//SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
	appDelegate.listPrompt = 2;
	[self.tabBarController setSelectedIndex:1];
	//[self.navigationController pushViewController:secondViewController animated:YES];
	//[secondViewController release];	
}

- (void)dealloc {
    [super dealloc];
	[appDelegate release];
}

@end
