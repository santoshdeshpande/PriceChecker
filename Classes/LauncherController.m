//
//  LauncherController.m
//  pricechecker
//
//  Created by Santosh S on 29/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LauncherController.h"


@implementation LauncherController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	self.title=@"Menu";
	return self;
}

- (void) loadView {
	[super loadView];
	TTLauncherView *launcherView = [[TTLauncherView alloc] initWithFrame: self.view.bounds];
	launcherView.backgroundColor = [UIColor blackColor];
	launcherView.columnCount = 2;
	launcherView.persistenceMode = TTLauncherPersistenceModeAll;	
	launcherView.delegate = self;

	launcherView.pages = [NSArray arrayWithObjects:
						  [NSArray arrayWithObjects:
						   [self launcherItemWithTitle:@"Scan Barcode" image:@"bundle://AppIcon.png" URL:@"ss://scanview"],
						   [self launcherItemWithTitle:@"Discrepancy List" image:@"bundle://AppIcon.png" URL:@"http://www.yahoo.com"],
						   nil]
						  ,nil];
	[self.view addSubview:launcherView];
	[launcherView release];					   
}

- (TTLauncherItem *)launcherItemWithTitle:(NSString *)pTitle
									image:(NSString *)image URL:(NSString *)url {
    TTLauncherItem *launcherItem = [[TTLauncherItem alloc]
									initWithTitle:pTitle
									image:image
									URL:url canDelete:YES];
    return [launcherItem autorelease];
}


- (void)launcherView:(TTLauncherView*)launcher didSelectItem:(TTLauncherItem*)item {
	NSLog(@"did Select item %@",[item URL]);
	[[TTNavigator navigator] openURLAction: [TTURLAction actionWithURLPath:item.URL]];
}

- (void) dealloc {
	[super dealloc];
}
@end
