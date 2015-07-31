//
//  ViewController.h
//  远程的登录和注册
//
//  Created by wyzc on 15/7/23.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *unameText;
@property (weak, nonatomic) IBOutlet UITextField *upassText;
- (IBAction)loginTap:(UIButton *)sender;

- (IBAction)registTap:(UIButton *)sender;

@end

