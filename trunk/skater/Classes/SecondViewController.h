//
//  SecondViewController.h
//  skater
//
//  Created by jaswu on 4/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "skaterAppDelegate.h"
#import "TrickViewController.h"

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	UITableView *theList;
	skaterAppDelegate *appDelegate;
	TrickViewController *trickViewController;
	BOOL fromHomeScreen;
	int sortMode; // 0 = difficulty, 1 = type
}

@property (nonatomic, retain) IBOutlet UITableView *theList;
@property (nonatomic, retain) skaterAppDelegate *appDelegate;
@property (nonatomic, retain) TrickViewController *trickViewController;
@property (nonatomic, readwrite) BOOL fromHomeScreen;
@property (nonatomic, readwrite) int sortMode;

- (IBAction)chooseMode:(id)sender;

@end
