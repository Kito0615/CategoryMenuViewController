//
//  AppDelegate.h
//  CategoryMenu
//
//  Created by AnarL on 16/3/4.
//  Copyright © 2016年 AnarL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryMenuViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    CategoryMenuViewController * _mainVC;
}

@property (strong, nonatomic) UIWindow *window;


@end

