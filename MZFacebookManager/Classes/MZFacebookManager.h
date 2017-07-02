//
//  MZFacebookLoginManager.h
//  Pods
//
//  Created by Muzammil Mohammad on 03/04/17.
//  Copyright © 2017 Muzammil Mohammad. All rights reserved.
//

#import "MZFacebookLoginManager.h"


/* Do following changes in your app.
 
 1. Inside AppDelegate.m  #import <MZFacebookManager/MZFacebookManager.h>

 2. Add/Update below method
 
 - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
 {
    FBSDKApplicationDelegate *delegate = [[MZFacebookLoginManager FacebookManager] fbAppDelegate];
 
    return [delegate application:application
            openURL:url
            sourceApplication:sourceApplication
            annotation:annotation];
 
 }
 
 3. Inside app plist file, add your Facebook App id
 
    -> Define fbauth2 value for key LSApplicationQueriesSchemes
    https://developers.facebook.com/docs/ios/ios9
 
    -> FacebookAppID (key) | XXXXXXXXXXXXX (value)

    and URL Scheme. For more info check Facebook developer website.
    https://developers.facebook.com/docs/ios/getting-started
 
 */
