//
//  TrickViewController.h
//  skater
//
//  Created by jaswu on 4/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "skaterAppDelegate.h"

@interface TrickViewController : UIViewController {
	NSString *trickName;
	skaterAppDelegate *appDelegate;
	UILabel *description;
	UILabel *tips;
	UILabel *status;
	UIImageView *check;
}

@property (nonatomic, retain) NSString *trickName;
@property (nonatomic, retain) skaterAppDelegate *appDelegate;
@property (nonatomic, retain) IBOutlet UILabel *description;
@property (nonatomic, retain) IBOutlet UILabel *tips;
@property (nonatomic, retain) IBOutlet UILabel *status;
@property (nonatomic, retain) IBOutlet UIImageView *check;

@end
