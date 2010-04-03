//
//  TrickViewController.m
//  skater
//
//  Created by jaswu on 4/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TrickViewController.h"


@implementation TrickViewController

@synthesize trickName;
@synthesize appDelegate;
@synthesize description;
@synthesize tips;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	appDelegate = (skaterAppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (void)viewWillAppear:(BOOL)animated {
	self.navigationItem.title = trickName;
	NSArray *info = [appDelegate.trickInfo objectForKey:trickName];
	// Hacky...
	NSString *temp = [[NSString alloc] initWithFormat:@"%@\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", [info objectAtIndex:2]];
	[description setText:temp];
	[temp release];
	temp = [[NSString alloc] initWithFormat:@"%@\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", [info objectAtIndex:3]];
	[tips setText:temp];
	[temp release];
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


- (void)dealloc {
    [super dealloc];
	[trickName release];
	[appDelegate release];
	[description release];
	[tips release];
}


@end
