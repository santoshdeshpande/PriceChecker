//
//  BarCodeScannerController.h
//  pricechecker
//
//  Created by Santosh S on 04/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BarCodeScannerController : TTViewController  {
	NSString *result;
	TTImageView *productImage;
	UILabel *codeLabel;
}

- (id) initWithText:(NSString *)text;

@end
