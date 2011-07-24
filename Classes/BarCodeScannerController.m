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
	 UIButton *scanButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	 [scanButton setFrame:CGRectMake(20, 20, 200, 44)];
	 [scanButton setTitle:@"Scan Code" forState:UIControlStateNormal];
 	 [scanButton addTarget:self action:@selector(scanButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
	 [self.view addSubview:scanButton];
	
	resultText = [[UITextView alloc] init];
	[resultText setFrame:CGRectMake(20, 50, 200, 50)];
	[self.view addSubview:resultText];
}

- (IBAction) scanButtonTapped : (id) sender{
	ZBarReaderViewController *reader = [ZBarReaderViewController new];
	reader.showsZBarControls = FALSE;
	reader.readerDelegate = self;
	ZBarImageScanner *scanner = reader.scanner;
	[scanner setSymbology:ZBAR_I25 config:ZBAR_CFG_ENABLE to:0];
	[self presentModalViewController:reader animated:YES];
	[reader release];
}

- (void) imagePickerController: (UIImagePickerController*) reader didFinishPickingMediaWithInfo: (NSDictionary*) info {
	id<NSFastEnumeration> results =
	[info objectForKey: ZBarReaderControllerResults];
    ZBarSymbol *symbol = nil;
    for(symbol in results)
        break;
	
    // EXAMPLE: do something useful with the barcode data
	NSLog(@"Symbol data is: %@",symbol.data);
	resultText.text = symbol.data;
    // EXAMPLE: do something useful with the barcode image
//    resultImage.image =
//	[info objectForKey: UIImagePickerControllerOriginalImage];
	
    // ADD: dismiss the controller (NB dismiss from the *reader*!)
    [reader dismissModalViewControllerAnimated: YES];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	if(result) {
		resultText.text = result;
	}
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
