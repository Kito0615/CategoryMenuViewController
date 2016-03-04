//
//  MainViewController.m
//  CategoryMenu
//
//  Created by AnarL on 16/3/4.
//  Copyright © 2016年 AnarL. All rights reserved.
//

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#import "CategoryMenuViewController.h"

@interface CategoryMenuViewController () <UITableViewDelegate, UITableViewDataSource>
{
    UITableView * _categoryTableView;
    UITableView * _productsTableView;
}

@end

@implementation CategoryMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    self.title = @"Category";
    
    [self setupUI];
}

- (void)setupUI
{
    _categoryTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH / 3.0, SCREEN_HEIGHT - 64)];
    _categoryTableView.separatorColor = [UIColor colorWithRed:171/255.0 green:205/255.0 blue:239/255.0 alpha:1];
    _categoryTableView.delegate = self;
    _categoryTableView.dataSource = self;
    _productsTableView = [[UITableView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH / 3.0, 0, SCREEN_WIDTH * 2.0 / 3.0, SCREEN_HEIGHT)];
    _productsTableView.delegate = self;
    _productsTableView.dataSource = self;
    
    
    [self.view addSubview:_categoryTableView];
    [self.view addSubview:_productsTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == _categoryTableView) {
        return _categoryArray.count;
    } else {
        return _productsArray.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cateCellName = @"category";
    static NSString * prodCellName = @"product";
    
    if (tableView == _categoryTableView) {
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cateCellName];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cateCellName];
        }
        
        UIView * bgView = [[UIView alloc] initWithFrame:cell.frame];
        bgView.backgroundColor = [UIColor redColor];
        cell.selectedBackgroundView = bgView;
        
        cell.textLabel.text = [[[_categoryArray objectAtIndex:indexPath.row] allKeys] lastObject];
        return cell;
    } else {
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:prodCellName];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:prodCellName];
        }
        cell.textLabel.text = _productsArray[indexPath.row];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == _categoryTableView) {
        NSString * key = [[_categoryArray[indexPath.row] allKeys] lastObject];
        _productsArray = [_categoryArray[indexPath.row] objectForKey:key];
        [_productsTableView reloadData];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == _categoryTableView) {
        return 44;
    } else {
        return 65;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
