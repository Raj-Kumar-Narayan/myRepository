//
//  ImageChangeViewController.h
//  ImageChange
//
//  Created by Chakra on 05/08/11.
//  Copyright 2011 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageChangeViewController : UIViewController {
   
    UIView *View3;
	UIImageView *View1;
	UIImageView *View2;
	
}

@property (nonatomic, retain) UIView *View3;
@property (nonatomic, retain) UIImageView *View1;
@property (nonatomic, retain) UIImageView *View2;

- (IBAction)MoveImage:(id)sender;

@end
