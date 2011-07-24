//
//  BarCodeScannerController.h
//  pricechecker
//
//  Created by Santosh S on 04/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"


@interface BarCodeScannerController : TTViewController  {
	NSString *result;
	TTImageView *productImage;
	UILabel *codeLabel;
	MBProgressHUD *HUD;
	
}

- (id) initWithText:(NSString *)text;

- (void) myTask;
@end
