//
//  FirstViewController.h
//  test
//
//  Created by alex-babich on 11.01.16.
//  Copyright © 2016 ababich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface FirstViewController : UIViewController {
    FBSDKLoginButton *loginButton;
}

@property (nonatomic,retain) FBSDKLoginButton *loginButton;


@end

