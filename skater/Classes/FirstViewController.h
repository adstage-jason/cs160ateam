//
//  FirstViewController.h
//  skater
//
//  Created by Annette Trujillo on 3/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "skaterAppDelegate.h"
#import "SecondViewController.h"

@interface FirstViewController : UIViewController {
	skaterAppDelegate *appDelegate;
}

@property (nonatomic, retain) skaterAppDelegate *appDelegate;

- (IBAction)watchVideo:(id)sender;
- (IBAction)shareVideo:(id)sender;

@end
