//
//  SystemUIViewController.h
//  TgLnk
//
//  Created by shepard zhao on 12/04/2015.
//  Copyright (c) 2015 com.xunzhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UINavigationBar+Addition.h"
#import <SDWebImage/UIImageView+WebCache.h>


@interface SystemUIViewControllerModel : UIViewController{
    UIView *loadingView;
    UIActivityIndicatorView *indicator;
}
//set animated loading view
- (void)setLoadingAnimationViewForWebView:(UIViewController*)myViewController;
//get animated loading view
- (UIView*)getLoadingAnimationViewForWebView;
//display alert
+ (void)aLertViewDisplay:(NSString *)message
                        :(NSString *)title
                        :(id)delegate
                        :(NSString *)cancelButtonTitle
                        :(NSString *)otherButtonTitle;
//hiden the navigationBar hair line
+(void)hideBottomHairline:(UINavigationBar*)navigationBar;

//pull down and refresh
+(void)pullDownAndRefresh:(NSObject*)getbject : (id)getid;

//cache images
+(void)imageCache:(UIImageView *)objectUiImageView
                 :(NSString*) imageUrl;

//fix rotate issue
+ (UIImage *)fixOrientation:(UIImage *)aImage;

//hide tabBar controller
+ (void) hideTabBar:(UITabBarController *) tabBarController;

//radius button
+ (UIButton*) styleButton:(UIButton*)button cornerRadius:(CGFloat)radius  borderWidth:(CGFloat)borderWidth borderColor:(CGColorRef)borderColor;


@end