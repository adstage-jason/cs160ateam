//
//  skaterAppDelegate.m
//  skater
//
//  Created by Annette Trujillo on 3/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "skaterAppDelegate.h"

@implementation skaterAppDelegate

@synthesize window;
@synthesize tabBarController;
@synthesize trickInfo;
@synthesize trickStatus;
@synthesize freestyle;
@synthesize aerials;
@synthesize flips;
@synthesize grinds;
@synthesize lip;
@synthesize manuals;
@synthesize oneStar;
@synthesize twoStar;
@synthesize threeStar;
@synthesize fourStar;
@synthesize fiveStar;
@synthesize listPrompt;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    // Add the tab bar controller's current view as a subview of the window
    [window addSubview:tabBarController.view];
	listPrompt = 0;
	// Set up arrays
	freestyle = [[NSMutableArray alloc] init];
	aerials = [[NSMutableArray alloc] init];
	flips = [[NSMutableArray alloc] init];
	grinds = [[NSMutableArray alloc] init];
	lip = [[NSMutableArray alloc] init];
	manuals = [[NSMutableArray alloc] init];
	oneStar = [[NSMutableArray alloc] init];
	twoStar = [[NSMutableArray alloc] init];
	threeStar = [[NSMutableArray alloc] init];
	fourStar = [[NSMutableArray alloc] init];
	fiveStar = [[NSMutableArray alloc] init];
	trickInfo = [[NSDictionary alloc] initWithObjectsAndKeys:
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"One Star", @"Spin one full revolution", @"Don't scrub!", nil], @"360 Spin", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Two Stars", @"Similar to a Casper with the board upside-down", @"Don't scrub!", nil], @"50/50", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Three Stars", @"Like a Boneless, but the rider grabs the Nose with the front hand", @"Don't scrub!", nil], @"Beanplant", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Four Stars", @"Plant the front foot and grab with the trailing hand to catch air", @"Don't scrub!", nil], @"Boneless", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Five Stars", @"Place the back foot on top of the tail and the front foot under the board", @"Don't scrub!", nil], @"Casper", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"One Star", @"Plant one hand on the floor and hold the board in the air with the other hand", @"Don't scrub!", nil], @"Gymnast Plant", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Two Stars", @"Wrap the board over the back foot in a 360 degree rotation and then land", @"Don't scrub!", nil], @"Impossible", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Three Stars", @"A half flip backwards and then a full flip forwards", @"Don't scrub!", nil], @"Kickback", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Four Stars", @"Balance with the front or back wheels off the ground", @"Don't scrub!", nil], @"Manual", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Five Stars", @"Stand stationary or roll forward and pop down on the Tail with the back foot", @"Don't scrub!", nil], @"Ollie", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"One Star", @"Any trick where you flip out of a Railstand", @"Don't scrub!", nil], @"Railflip", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Two Stars", @"One edge of the board is on the ground while you stand on the other edge", @"Don't scrub!", nil], @"Railstand", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Three Stars", @"180 degree spin of the board", @"Don't scrub!", nil], @"Shove It", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Four Stars", @"Enter a Manual on the back wheels and swing the Nose around", @"Don't scrub!", nil], @"Spacewalk", 
		[NSArray arrayWithObjects:@"Freestyle Tricks", @"Five Stars", @"A handstand done in a 50/50", @"Don't scrub!", nil], @"TV Stand", 
		[NSArray arrayWithObjects:@"Aerials", @"One Star", @"Spin half a rotation in midair", @"Don't scrub!", nil], @"180", 
		[NSArray arrayWithObjects:@"Aerials", @"Two Stars", @"Spin one rotation in midair", @"Don't scrub!", nil], @"360", 
		[NSArray arrayWithObjects:@"Aerials", @"Three Stars", @"Spin one and a half rotations in midair", @"Don't scrub!", nil], @"540", 
		[NSArray arrayWithObjects:@"Aerials", @"Four Stars", @"Spin two rotations in midair", @"Don't scrub!", nil], @"720", 
		[NSArray arrayWithObjects:@"Aerials", @"Five Stars", @"Spin two and a half rotations in midair", @"Don't scrub!", nil], @"900", 
		[NSArray arrayWithObjects:@"Aerials", @"One Star", @"A no-footed Backside Air where the front hand grabs the nose", @"Don't scrub!", nil], @"Airwalk", 
		[NSArray arrayWithObjects:@"Aerials", @"Two Stars", @"Complete one full rotation in the lateral axis", @"Don't scrub!", nil], @"Backflip", 
		[NSArray arrayWithObjects:@"Aerials", @"Three Stars", @"Grab the board on the heel side with the front hand and land forward", @"Don't scrub!", nil], @"Backside Air", 
		[NSArray arrayWithObjects:@"Aerials", @"Four Stars", @"Grab the board with the body in a crucifix-like position", @"Don't scrub!", nil], @"Christ Air", 
		[NSArray arrayWithObjects:@"Aerials", @"Five Stars", @"Grab the board before lifting off", @"Don't scrub!", nil], @"Frontside Air", 
		[NSArray arrayWithObjects:@"Aerials", @"One Star", @"Grab the nose or heel edge with the front hand", @"Don't scrub!", nil], @"Lien Air", 
		[NSArray arrayWithObjects:@"Aerials", @"Two Stars", @"An inverted backside 540", @"Don't scrub!", nil], @"McTwist", 
		[NSArray arrayWithObjects:@"Aerials", @"Three Stars", @"Grab the front of the board", @"Don't scrub!", nil], @"Nosegrab", 
		[NSArray arrayWithObjects:@"Aerials", @"Four Stars", @"Grab the nose or heel edge with the front hand", @"Don't scrub!", nil], @"Rocket Air", 
		[NSArray arrayWithObjects:@"Aerials", @"Five Stars", @"Grab the back of the board", @"Don't scrub!", nil], @"Tailgrab", 
		[NSArray arrayWithObjects:@"Flips", @"One Star", @"Initiate a kickflip and spin the board 360 degrees", @"Don't scrub!", nil], @"360 Flip", 
		[NSArray arrayWithObjects:@"Flips", @"Two Stars", @"A 180 Shove-It with a 180 Body Varial in the opposite direction", @"Don't scrub!", nil], @"Corkscrew", 
		[NSArray arrayWithObjects:@"Flips", @"Three Stars", @"A regular heelflip with a backside 180 body varial", @"Don't scrub!", nil], @"Disco Flip", 
		[NSArray arrayWithObjects:@"Flips", @"Four Stars", @"Flip the board in any direction with fingers on the nose or tail", @"Don't scrub!", nil], @"Fingerflip", 
		[NSArray arrayWithObjects:@"Flips", @"Five Stars", @"A kickflip combined with a frontside 180 ollie", @"Don't scrub!", nil], @"Frontside Kickflip", 
		[NSArray arrayWithObjects:@"Flips", @"One Star", @"Similar to the kickflip, only the board spins toe-side", @"Don't scrub!", nil], @"Heelflip", 
		[NSArray arrayWithObjects:@"Flips", @"Two Stars", @"Frontside or backside 360 nollie", @"Don't scrub!", nil], @"Helipop", 
		[NSArray arrayWithObjects:@"Flips", @"Three Stars", @"An ollie off the nose of the board", @"Don't scrub!", nil], @"Nollie", 
		[NSArray arrayWithObjects:@"Flips", @"Four Stars", @"The board spins a full rotation sideways", @"Don't scrub!", nil], @"Kickflip", 
		[NSArray arrayWithObjects:@"Flips", @"Five Stars", @"Basic pop with a scoop turning the board 180 degrees", @"Don't scrub!", nil], @"Pop Shove-it", 
		[NSArray arrayWithObjects:@"Grinds", @"One Star", @"Both trucks are on the edge", @"Don't scrub!", nil], @"50-50 Grind", 
		[NSArray arrayWithObjects:@"Grinds", @"Two Stars", @"The back truck grinds while the front truck is suspended above the rail", @"Don't scrub!", nil], @"5-0 Grind", 
		[NSArray arrayWithObjects:@"Grinds", @"Three Stars", @"Semi-kickflip, then slide the board backside", @"Don't scrub!", nil], @"Blindslide", 
		[NSArray arrayWithObjects:@"Grinds", @"Four Stars", @"A tailslide with the board more vertical than horizontal", @"Don't scrub!", nil], @"Bluntslide", 
		[NSArray arrayWithObjects:@"Grinds", @"Five Stars", @"Grind a rail while the front truck hangs over the rail", @"Don't scrub!", nil], @"Feeble Grind", 
		[NSArray arrayWithObjects:@"Grinds", @"One Star", @"A Feeble Grind on the front truck", @"Don't scrub!", nil], @"Losi Grind", 
		[NSArray arrayWithObjects:@"Grinds", @"Two Stars", @"A Bluntslide performed on the nose of the board", @"Don't scrub!", nil], @"Nosebluntslide", 
		[NSArray arrayWithObjects:@"Grinds", @"Three Stars", @"Same as a Tailslide but sliding on the nose of the board", @"Don't scrub!", nil], @"Noseslide", 
		[NSArray arrayWithObjects:@"Grinds", @"Four Stars", @"Slide with the tail of the skateboard", @"Don't scrub!", nil], @"Tailslide", 
		[NSArray arrayWithObjects:@"Grinds", @"Five Stars", @"The front truck slides on the rail while the back truck hangs down", @"Don't scrub!", nil], @"Willy Grind", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"One Star", @"A stall on both trucks of the skateboard", @"Don't scrub!", nil], @"Axle Stall", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"Two Stars", @"A stall on the wheelbase of the board", @"Don't scrub!", nil], @"Boardstall", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"Three Stars", @"A nosegrab wherein the front foot is planted from the heel edge of the board", @"Don't scrub!", nil], @"Bean Plant", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"Four Stars", @"Any trick that goes back in switchstance which was not initiated from a switched stance", @"Don't scrub!", nil], @"Fakie", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"Five Stars", @"Grabs the board and plant a hand on the coping", @"Don't scrub!", nil], @"Invert", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"One Star", @"Basically a vertical cartwheel", @"Don't scrub!", nil], @"Miller Flip", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"Two Stars", @"A stall on the front truck which is grabbed for reentry", @"Don't scrub!", nil], @"Nose Pick", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"Three Stars", @"An invert whereby the skater's front leg is fully extended.", @"Don't scrub!", nil], @"Sad Plant", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"Four Stars", @"A stall on the tail of the skateboard", @"Don't scrub!", nil], @"Tail Stall", 
		[NSArray arrayWithObjects:@"Lip Tricks", @"Five Stars", @"A fakie tail grab foot plant", @"Don't scrub!", nil], @"Thruster", 
		[NSArray arrayWithObjects:@"Manuals", @"One Star", @"Four switch-ups during a manual", @"Don't scrub!", nil], @"Caster Manual", 
		[NSArray arrayWithObjects:@"Manuals", @"Two Stars", @"With the front foot underneath the Nose, hook the board up into a manual", @"Don't scrub!", nil], @"English Manual", 
		[NSArray arrayWithObjects:@"Manuals", @"Three Stars", @"A manual in which both feet are straight on the Nose", @"Don't scrub!", nil], @"Hang Ten", 
		[NSArray arrayWithObjects:@"Manuals", @"Four Stars", @"A manual in which both feet are straight on the Tail", @"Don't scrub!", nil], @"Heelie", 
		[NSArray arrayWithObjects:@"Manuals", @"Five Stars", @"Place your front foot on the Nose and use your back toes to hook the board up", @"Don't scrub!", nil], @"Swedish Manual", 
		nil];
	for (NSString *trick in [trickInfo allKeys]) {
		NSArray *info = [trickInfo objectForKey:trick];
		NSString *type = [info objectAtIndex:0];
		if ([type isEqualToString:@"Freestyle Tricks"]) {
			[freestyle addObject:trick];
		} else if ([type isEqualToString:@"Aerials"]) {
			[aerials addObject:trick];
		} else if ([type isEqualToString:@"Flips"]) {
			[flips addObject:trick];
		} else if ([type isEqualToString:@"Grinds"]) {
			[grinds addObject:trick];
		} else if ([type isEqualToString:@"Lip Tricks"]) {
			[lip addObject:trick];
		} else if ([type isEqualToString:@"Manuals"]) {
			[manuals addObject:trick];
		}
		NSString *difficulty = [info objectAtIndex:1];
		if ([difficulty isEqualToString:@"One Star"]) {
			[oneStar addObject:trick];
		} else if ([difficulty isEqualToString:@"Two Stars"]) {
			[twoStar addObject:trick];
		} else if ([difficulty isEqualToString:@"Three Stars"]) {
			[threeStar addObject:trick];
		} else if ([difficulty isEqualToString:@"Four Stars"]) {
			[fourStar addObject:trick];
		} else if ([difficulty isEqualToString:@"Five Stars"]) {
			[fiveStar addObject:trick];
		}
		[freestyle sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[aerials sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[flips sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[grinds sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[lip sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[manuals sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[oneStar sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[twoStar sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[threeStar sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[fourStar sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
		[fiveStar sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
	}
	// Read the Plist
	NSString *error;
	NSString *plistPath;
	NSPropertyListFormat format;
	NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]; // gets the document directory
	plistPath = [rootPath stringByAppendingPathComponent:@"TrickStatus.plist"];
	if(![[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
		plistPath = [[NSBundle mainBundle] pathForResource:@"TrickStatus" ofType:@"plist"];
	}
	NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:plistPath];
	NSDictionary *temp = (NSDictionary *)[NSPropertyListSerialization propertyListFromData: plistXML mutabilityOption:NSPropertyListMutableContainersAndLeaves format:&format errorDescription: &error];
	self.trickStatus = [NSMutableDictionary dictionaryWithDictionary: temp];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Write the Plist back
	NSString *error;
	NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
	NSString *plistPath = [rootPath stringByAppendingPathComponent:@"TrickStatus.plist"];
	NSData *plistData = [NSPropertyListSerialization dataFromPropertyList: trickStatus format:NSPropertyListXMLFormat_v1_0 errorDescription:&error];
	if(plistData) {
		[plistData writeToFile:plistPath atomically:YES];
	}	
}

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
*/

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/


- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
	[trickInfo release];
	[trickStatus release];
	[freestyle release];
	[aerials release];
	[flips release];
	[grinds release];
	[lip release];
	[manuals release];
	[oneStar release];
	[twoStar release];
	[threeStar release];
	[fourStar release];
	[fiveStar release];
}

@end

