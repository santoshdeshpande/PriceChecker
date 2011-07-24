    //
//  BarCodeScannerController.m
//  pricechecker
//
//  Created by Santosh S on 04/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BarCodeScannerController.h"

@implementation BarCodeScannerController

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}

- (id) initWithText: (NSString *) text {
	self = [super init];
	result = text;	
	return self;
}



// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	[super loadView];
	
	UIImage *defaultImage = [UIImage imageNamed:@"defaultIcon.png"];
	productImage = [[TTImageView alloc] init];
	[productImage setFrame:CGRectMake(20, 20, 75, 75)];
	[productImage setDefaultImage:defaultImage];
	[productImage.layer setBorderColor:[[UIColor blackColor] CGColor]];
	[productImage.layer setBorderWidth:1.0];
	[self.view addSubview:productImage];
	
	UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(115, 10, 180, 27)];
	nameLabel.text = @"Name";
	[self.view addSubview:nameLabel];

	codeLabel = [[UILabel alloc] initWithFrame:CGRectMake(115, 55, 180, 27)];
	codeLabel.text = @"Bar Code";
	[self.view addSubview:codeLabel];
	
	
	UIButton *discrepancyButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	discrepancyButton.frame = CGRectMake(25, 315, 275, 37);
	[discrepancyButton setTitle:@"Add Discrepancy" forState:UIControlStateNormal];
	[self.view addSubview:discrepancyButton];

	UIButton *takePictureButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	takePictureButton.frame = CGRectMake(25, 360, 275, 37);
	[takePictureButton setTitle:@"Take Picture" forState:UIControlStateNormal];
	[self.view addSubview:takePictureButton];
	

	//[productImage release];
	//[discrepancyButton release];
	//[takePictureButton release];

	
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	if(result)
		codeLabel.text = result;
}

- (void) myTask {

}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
