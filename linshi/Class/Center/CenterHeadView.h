//
//  CenterHeadView.h
//  linshi
//
//  Created by 柳焱 on 2016/12/9.
//  Copyright © 2016年 liuyan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^LandingButtonBlock)();
typedef void(^loginButtonBlock)();

@interface CenterHeadView : UIView
@property (copy, nonatomic) LandingButtonBlock landingBlock;
@property (copy, nonatomic) loginButtonBlock loginBlock;
- (void)reloadHeadView;

@end
