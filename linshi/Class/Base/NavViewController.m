//
//  NavViewController.m
//  linshi
//
//  Created by 柳焱 on 2016/12/6.
//  Copyright © 2016年 liuyan. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()
//@property(nonatomic,strong)UIBarButtonItem *leftItem;
@end

@implementation NavViewController

+ (void)initialize
{
    [super initialize];
    // 改变导航栏外观颜色
    [[UINavigationBar appearance] setBarTintColor: [UIColor colorWithRed:255/255.0 green:225/255.0 blue:255/255.0 alpha:1.0]];
    // 改变导航栏字体颜色
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:17],NSFontAttributeName, nil]];

}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}
-(void)creatItem{
    UIButton *buttton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    buttton.frame = CGRectMake(0, 0, 30, 30);
    [buttton setTitle:@"朝阳区" forState:(UIControlStateNormal)];
    [buttton addTarget:self action:@selector(changeAddress) forControlEvents:(UIControlEventTouchUpInside)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:buttton];
    UIImage *image = [UIImage imageNamed:@"购物车"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:(UIBarButtonItemStyleDone) target:self action:@selector(rightAction)];
    

}
- (void)rightAction{
    
}
-(void)changeAddress{
    NSLog(@"asdfdghj");
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
        
        UIButton *button = [[UIButton alloc] init];
        [button setImage:[UIImage imageNamed:@"消息"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"消息"] forState:UIControlStateHighlighted];
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        button.bounds = CGRectMake(0, 0, 30, 30);
        viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        UIButton *button1 = [[UIButton alloc] init];
        button1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [button1 setTitle:@"朝阳区" forState:UIControlStateNormal];
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button1 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button1 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        button1.bounds = CGRectMake(0, 0, 50, 30);
        button1.titleLabel.font = [UIFont systemFontOfSize:15];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button1];
    
    
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}
@end
