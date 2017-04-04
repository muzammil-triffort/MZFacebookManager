//
//  MZFacebookLoginManager.h
//  Pods
//
//  Created by Muzammil Mohammad on 03/04/17.
//
//

#import <UIKit/UIKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

typedef void(^FacebookLoginBlock)(BOOL success, id token);

@interface MZFacebookLoginManager : NSObject

+ (id)FacebookManager;

- (void)setFacebookAppId:(NSString*)appId;

// Login with only 'email' read permission.
- (void)openFacebookLogin:(FacebookLoginBlock)block insideController:(UIViewController*)controller;

// Get FB App Delegate to use in AppDelegate file
@property (nonatomic, retain) id fbAppDelegate;

@end

