//
//  MZFacebookLoginManager.m
//  Pods
//
//  Created by Muzammil Mohammad on 03/04/17.
//  Copyright © 2017 Muzammil Mohammad. All rights reserved.
//

#import "MZFacebookLoginManager.h"

@interface MZFacebookLoginManager ()
{
    FacebookLoginBlock    _facebookLoginBlock;
}

@property (nonatomic, retain) NSString *facebookAppId;

@end

@implementation MZFacebookLoginManager

+ (id)LoginManager
{
    static dispatch_once_t onceQueue;
    static MZFacebookLoginManager *loginManager = nil;
    
    dispatch_once(&onceQueue, ^
                  {
                      if (!loginManager) {
                          
                          loginManager = [[self alloc] init];
                      }
                  });
    
    return loginManager;
}

- (void)setFacebookAppId:(NSString*)appId
{
    _facebookAppId = appId;
}

- (void)openFacebookLoginInsideController:(UIViewController*)controller response:(FacebookLoginBlock)block
{
    [self openFacebookLoginWithPermissions:@[@"email"] insideController:controller response:block];
}

- (void)openFacebookLoginWithPermissions:(NSArray*)permissions insideController:(UIViewController*)controller response:(FacebookLoginBlock)block
{
    if (!_facebookAppId) {
        
        NSLog(@"Please define Facebook App Id.");
        _facebookLoginBlock(NO, nil);
        return;
    }
    
    if (!controller) {
        
        NSLog(@"Please set root controller.");
        _facebookLoginBlock(NO, nil);
        
        return;
    }
    
    [FBSDKSettings setAppID:_facebookAppId];
    
    _facebookLoginBlock = [block copy];
    
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    
    login.loginBehavior = FBSDKLoginBehaviorSystemAccount;
    
    [login logOut];
    
    _fbAppDelegate = [FBSDKApplicationDelegate sharedInstance];
    
    [login logInWithReadPermissions:permissions fromViewController:controller handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        
        if (error)
        {
            NSLog(@"Error: %@", error.description);
            _facebookLoginBlock(NO, nil);
        }
        
        else if (result.isCancelled)
        {
            NSLog(@"Cancelled");
            _facebookLoginBlock(NO, nil);
        }
        
        else
        {
            NSLog(@"Login done");
            
            if ([result.grantedPermissions containsObject:@"email"]) {
                
                FBSDKAccessToken *token = [FBSDKAccessToken currentAccessToken];
                
                if (token)
                {
                    NSLog(@"Token found");
                    _facebookLoginBlock(YES, token);
                }
                
                else
                {
                    NSLog(@"Token not found");
                    _facebookLoginBlock(NO, nil);
                }
            }
        }
    }];
}

+ (UIViewController*)getCurrentViewController
{
    UINavigationController *navController = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    
    if (navController) {
        
        UIViewController *topController = [navController visibleViewController];
        
        return topController;
    }
    
    return nil;
}

@end
