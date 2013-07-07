//
//  ImageChangeViewController.m
//  ImageChange
//
//  Created by Chakra on 05/08/11.
//  Copyright 2011 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import "ImageChangeViewController.h"

#define kHeight		320.0
#define kWidth			400.0
#define kTransitionDuration	0.75
#define kTopPlacement		80.0

@implementation ImageChangeViewController

@synthesize View3, View1, View2;

- (void)dealloc
{
    [View1 release];
	[View2 release];
	[View3 release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"TransitionsTitle", @"");
	
   CGRect frame = CGRectMake(round((self.view.bounds.size.width - kWidth) / 2.0),
							  kTopPlacement, kWidth, kHeight);
	self.View3 = [[[UIView alloc] initWithFrame:frame] autorelease];
	[self.view addSubview:self.View3];
	
	frame = CGRectMake(0.0, 0.0, kWidth, kHeight);
	self.View1 = [[[UIImageView alloc] initWithFrame:frame] autorelease];
	self.View1.image = [UIImage imageNamed:@"1.png"];
	[self.View3 addSubview:self.View1];
	
	CGRect imageFrame = CGRectMake(0.0, 0.0, kWidth, kHeight);
	self.View2 = [[[UIImageView alloc] initWithFrame:imageFrame] autorelease];
	self.View2.image = [UIImage imageNamed:@"2.png"];

}


- (IBAction)MoveImage:(id)sender
{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:kTransitionDuration];
	
	[UIView setAnimationTransition:([self.View1 superview] ?
									UIViewAnimationTransitionCurlUp : UIViewAnimationTransitionCurlDown)
						   forView:self.View3 cache:YES];
	if ([self.View2 superview])
	{
		[self.View2 removeFromSuperview];
		[self.View3 addSubview:self.View1];
	}
	else
	{
		[self.View1 removeFromSuperview];
		[self.View3 addSubview:self.View2];
	}
	
	[UIView commitAnimations];
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    
	self.View3 = nil;
	self.View2 = nil;
	self.View1 = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
