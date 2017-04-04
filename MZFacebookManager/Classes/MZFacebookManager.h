
#import "MZFacebookLoginManager.h"

/* Do following changes in your app.
 
 1. Inside AppDelegate.m import MZFacebookManager/MZFacebookLoginManager
 
 - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
 {
    FBSDKApplicationDelegate *delegate = [[MZFacebookLoginManager FacebookManager] fbAppDelegate];
 
    return [delegate application:application
            openURL:url
            sourceApplication:sourceApplication
            annotation:annotation];
 
 }
 
 2. Inside app plist file, add your Facebook App id
 
    FacebookAppID (key) | XXXXXXXXXXXXX (value)
 
    and URL Scheme. For more info check Facebook developer website.
 
 
 */
