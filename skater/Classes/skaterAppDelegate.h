//
//  skaterAppDelegate.h
//  skater
//
//  Created by Annette Trujillo on 3/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface skaterAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
	NSDictionary *trickInfo;
	NSMutableDictionary *trickStatus;
	NSMutableArray *freestyle;
	NSMutableArray *aerials;
	NSMutableArray *flips;
	NSMutableArray *grinds;
	NSMutableArray *lip;
	NSMutableArray *manuals;
	NSMutableArray *oneStar;
	NSMutableArray *twoStar;
	NSMutableArray *threeStar;
	NSMutableArray *fourStar;
	NSMutableArray *fiveStar;
	int listPrompt; // 0 = nothing, 1 = watch video, 2 = share video
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) NSDictionary *trickInfo;
@property (nonatomic, retain) NSMutableDictionary *trickStatus;
@property (nonatomic, retain) NSArray *freestyle;
@property (nonatomic, retain) NSArray *aerials;
@property (nonatomic, retain) NSArray *flips;
@property (nonatomic, retain) NSArray *grinds;
@property (nonatomic, retain) NSArray *lip;
@property (nonatomic, retain) NSArray *manuals;
@property (nonatomic, retain) NSArray *oneStar;
@property (nonatomic, retain) NSArray *twoStar;
@property (nonatomic, retain) NSArray *threeStar;
@property (nonatomic, retain) NSArray *fourStar;
@property (nonatomic, retain) NSArray *fiveStar;
@property (nonatomic, readwrite) int listPrompt;

@end
