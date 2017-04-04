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

+ (id)LoginManager;

- (void)setFacebookAppId:(NSString*)appId;

// Login with only 'email' read permission.
- (void)openFacebookLoginInsideController:(UIViewController*)controller response:(FacebookLoginBlock)block;

// Login with your own defined read permissions.
- (void)openFacebookLoginWithPermissions:(NSArray*)permissions insideController:(UIViewController*)controller response:(FacebookLoginBlock)block;

// Get FB App Delegate to use in AppDelegate file
@property (nonatomic, retain) id fbAppDelegate;

@end

