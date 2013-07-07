//
//  ImageChangeAppDelegate.h
//  ImageChange
//
//  Created by Chakra on 05/08/11.
//  Copyright 2011 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ImageChangeViewController;

@interface ImageChangeAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ImageChangeViewController *viewController;

@end
