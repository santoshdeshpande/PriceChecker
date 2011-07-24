//
//  PriceCheckerAppDelegate.h
//  PriceChecker
//
//  Created by Santosh S on 28/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LauncherController.h"
#import "BarCodeScannerController.h"
#import "EmbedReaderViewController.h"

@interface PriceCheckerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

