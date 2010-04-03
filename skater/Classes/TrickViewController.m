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
@synthesize status;
@synthesize check;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	appDelegate = (skaterAppDelegate *)[[UIApplication sharedApplication] delegate];
	self.check.image = [UIImage imageNamed:@"bigcheck.png"];
	self.check.backgroundColor = [UIColor whiteColor];
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
	if ([appDelegate.trickStatus objectForKey:trickName] == nil && ![trickName isEqualToString:@"180"]) {
		self.check.hidden = TRUE;
	} else {
		self.check.hidden = FALSE;
	}
	// Better way to do this?
	if (appDelegate.listPrompt != 0) {
		[self.navigationController popToRootViewControllerAnimated:YES];
	}
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
	[status release];
	[check release];
}


@end
