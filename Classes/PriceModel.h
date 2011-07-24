//
//  PriceModel.h
//  pricechecker
//
//  Created by Santosh S on 24/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PriceModel : NSObject {

	NSString *productName;
	NSString *productDescription;
	NSString *barCodeText;
	NSString *productValue;
	NSString *thumbnailURL;
}

@property (nonatomic, retain) NSString *productName;
@property (nonatomic, retain) NSString *productDescription;
@property (nonatomic, retain) NSString *barCodeText;
@property (nonatomic, retain) NSString *productValue;
@property (nonatomic, retain) NSString *thumbnailURL;

@end
