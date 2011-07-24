//
//  LauncherController.h
//  pricechecker
//
//  Created by Santosh S on 29/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LauncherController : TTViewController <TTLauncherViewDelegate>{
	
	
}

- (TTLauncherItem *)launcherItemWithTitle:(NSString *)pTitle
									image:(NSString *)image URL:(NSString *)url;
@end
