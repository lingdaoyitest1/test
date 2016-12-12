//
//  RootViewController.m
//  linshi
//
//  Created by 柳焱 on 2016/12/6.
//  Copyright © 2016年 liuyan. All rights reserved.
//

#import "RootViewController.h"
#import "NavViewController.h"
@interface RootViewController ()
@property(nonatomic,strong)NSArray *childArray;
@end

@implementation RootViewController
+ (void)initialize
{
    UITabBar *tabbar = [UITabBar appearance];
    tabbar.backgroundColor = [UIColor colorWithRed:192/255.0 green:255/255.0 blue:62/255.0 alpha:1.0];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:(UIControlStateSelected)];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor greenColor]} forState:(UIControlStateNormal)];
    self.tabBar.barTintColor = [UIColor colorWithRed:255/255.0 green:225/255.0 blue:255/255.0 alpha:1.0];
    [self creatChildViewController];
    
    // Do any additional setup after loading the view.
}


-(void)creatChildViewController{
    for (NSDictionary *dic in self.childArray) {
        Class view = NSClassFromString(dic[@"viewController"]);
        UIViewController *viewController = [[view alloc] init];
        UIImage *image = [[UIImage imageNamed:dic[@"image"]] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
        viewController.tabBarItem.image = image;
        
        viewController.tabBarItem.selectedImage = image;
        viewController.title = dic[@"title"];
        NavViewController *nav = [[NavViewController alloc]initWithRootViewController:viewController];
        [self addChildViewController:nav];
    }

}
-(NSArray *)childArray{
    if (!_childArray) {
        _childArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Child" ofType:@"plist"]];
    }
    return _childArray;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
