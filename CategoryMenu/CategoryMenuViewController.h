//
//  MainViewController.h
//  CategoryMenu
//
//  Created by AnarL on 16/3/4.
//  Copyright © 2016年 AnarL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryMenuViewController : UIViewController

/**
 *  Category name on the left.
 */
@property (nonatomic, copy) NSArray <NSDictionary *> * categoryArray;
/**
 *  Product name on the right. [Connected with Category on the left]
 */
@property (nonatomic, copy) NSArray * productsArray;

@end
