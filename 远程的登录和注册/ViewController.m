//
//  ViewController.m
//  远程的登录和注册
//
//  Created by wyzc on 15/7/23.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "ViewController.h"
#import "ZHQUtil.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginTap:(UIButton *)sender {
}

- (IBAction)registTap:(UIButton *)sender {
    NSString * uname=self.unameText.text;
    NSString * upass=self.upassText.text;
    //剔除两端空格
    //验证
    //get
    /*
    NSString * strUrl=[NSString stringWithFormat:@"http://localhost/web/action_ios_post.php?uname=%@&upass=%@&submit=zc",uname,upass];
    NSLog(@"%@",strUrl);
    NSURL * url=[NSURL URLWithString:strUrl];
    NSURLRequest * request=[NSURLRequest requestWithURL:url];
    NSData * data=[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    if(data)
    {
        NSString * strResult=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        if([strResult containsString:@"zcexists"])
        {
            [ZHQUtil alertWithMessage:@"账号已经存在！"];
        }
        else if([strResult containsString:@"zcsuccess"])
        {
            [ZHQUtil alertWithMessage:@"注册成功！"];
        }
        else
        {
            [ZHQUtil alertWithMessage:@"注册失败，请稍候再试！"];
        }
    }
    else
    {
        [ZHQUtil alertWithMessage:@"请求失败，请检查网络！"];
    }
     */
    //post
    NSURL * url=[NSURL URLWithString:@"http://192.168.100.185/web/action_ios_post.php"];
    NSMutableURLRequest * request=[NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"post"];
    NSString * strBody=[NSString stringWithFormat:@"uname=%@&upass=%@&submit=zc",uname,upass];
    NSData * data=[strBody dataUsingEncoding:NSUTF8StringEncoding];
    [request setHTTPBody:data];
    data=[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    //NSOperationQueue*que=[[NSOperationQueue alloc]init];
    //data=[NSURLConnection sendAsynchronousRequest:request queue:que completionHandler:^{NSLog(@"234t5");}];
    if(data)
        
        
    {
        NSString * strResult=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        if([strResult containsString:@"zcexists"])
        {
            [ZHQUtil alertWithMessage:@"账号已经存在！"];
        }
        else if([strResult containsString:@"zcsuccess"])
        {
            [ZHQUtil alertWithMessage:@"注册成功！"];
        }
        else
        {
            [ZHQUtil alertWithMessage:@"注册失败，请稍候再试！"];
        }
    }
    else
    {
        [ZHQUtil alertWithMessage:@"请求失败，请检查网络！"];
    }
}
@end
