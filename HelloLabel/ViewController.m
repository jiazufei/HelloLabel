//
//  ViewController.m
//  HelloLabel
//
//
//    NSArray * array = [NSArray arrayWithObjects:@"1",@"2",@"3", nil];
//    NSLog(@"%@",array[3]);

//  Created by 邢东飞mac on 16/5/5.
//  Copyright © 2016年 邢东飞mac. All rights reserved.
//

#import "ViewController.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define COLOR(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

@interface ViewController ()<UITextFieldDelegate>
{
    UIView * PopView;
    UIButton * button;
    UITextField * TextField;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%f",WIDTH);
    // Do any additional setup after loading the view, typically from a nib.
    //给标签分配内存
    label = [UILabel new];
    label = [[UILabel alloc]init];
    label = [[UILabel alloc]initWithFrame:CGRectMake(WIDTH/2-45, HEIGHT/2-15, 90, 30)];
    //给标签设置坐标
    //label.frame = CGRectMake(0, 0, 0, 0);
    //给标签添加背景色
    //label.backgroundColor = [UIColor lightGrayColor];
    //设置tag
    label.tag = 1;
    //圆角化
    label.layer.cornerRadius = 5;
    //边线宽度
    label.layer.borderWidth = 0.5;
    //边线颜色
    label.layer.borderColor = [COLOR(120, 120, 120)CGColor];
    //设置标签文本

    label.text = @"Hello Word";
    
    
    
    //设置标签文本字体和字体大小
    
//    
//    
//    label.font = [UIFont fontWithName:@"Arial" size:30];
//    
    label.font = [UIFont systemFontOfSize:11];
//    
//    //设置文本对齐方式
//    
//    
//    
    label.textAlignment = NSTextAlignmentCenter;
//    
//    
//    
//    //文本对齐方式有以下三种
//    
//    
//    
//    //typedef enum {
//    
//    
//    
//    // UITextAlignmentLeft = 0,左对齐
//    
//    
//    
//    // UITextAlignmentCenter,居中对齐
//    
//    
//    
//    // UITextAlignmentRight, 右对齐
//    
//    
//    
//    //} UITextAlignment;
//    
//    
//    
//    //文本颜色
//    
//    
//    
//    label.textColor = [UIColor blackColor];
//    
//    
//    
//    //超出label边界文字的截取方式
//    
//    
//    
//    label.lineBreakMode = NSLineBreakByTruncatingTail;
//    
//    
//    
//    //截取方式有以下6种
//    
//    
//    
//    //typedef enum {
//    
//    
//    
//    // UILineBreakModeWordWrap = 0, 以空格为边界，保留整个单词
//    
//    
//    
//    // UILineBreakModeCharacterWrap, 保留整个字符
//    
//    
//    
//    // UILineBreakModeClip, 到边界为止
//    
//    
//    
//    // UILineBreakModeHeadTruncation, 省略开始，以……代替
//    
//    
//    
//    // UILineBreakModeTailTruncation, 省略结尾，以……代替
//    
//    
//    
//    // UILineBreakModeMiddleTruncation,省略中间，以……代替，多行时作用于最后一行
//    
//    
//    
//    //} UILineBreakMode;
//    
//    
//    
//    
//    
//    //文本文字自适应大小
//    
//    
//    
//    label.adjustsFontSizeToFitWidth = YES;
//    
//    
//    
//    //当adjustsFontSizeToFitWidth=YES时候，如果文本font要缩小时
//    
//    //baselineAdjustment这个值控制文本的基线位置，只有文本行数为1是有效
//    
//    
//    
//    label.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
//    
//    
//    
//    //有三种方式
//    
//    //typedef enum {
//    
//    // UIBaselineAdjustmentAlignBaselines = 0, 默认值文本最上端于label中线对齐
//    
//    // UIBaselineAdjustmentAlignCenters,//文本中线于label中线对齐
//    
//    // UIBaselineAdjustmentNone,//文本最低端与label中线对齐
//    
//    //} UIBaselineAdjustment;
//    
//    
//    
//    //文本最多行数，为0时没有最大行数限制
//    
//    
//    
//    label.numberOfLines = 2;
//    
//    
//    
//    //最小字体，行数为1时有效，默认为0.0
//    
//    //label.minimumFontSize = 10.0;
//    
//    //文本高亮
//    
//    label.highlighted = YES;
//    
//    
//    
//    //文本是否可变
//    
//    label.enabled = YES;
//    
//    //去掉label背景色
//    
//    //label.backgroundColor = [UIColor clearColor];
//    
//    
//    
//    //文本阴影颜色www.2cto.com
//    
//    label.shadowColor = [UIColor grayColor];
//    
//    //阴影大小
//    
//    label.shadowOffset = CGSizeMake(1.0, 1.0);
//    
    
    
    //是否能与用户交互
    
    label.userInteractionEnabled = YES;
    

    // 把标签添加到视图（view）上
    [self.view addSubview:label];
    
    UITapGestureRecognizer *labelTapGestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(labelTouchUpInside:)];
    
    [label addGestureRecognizer:labelTapGestureRecognizer];
    
    
    PopView = [[UIView alloc]initWithFrame:CGRectMake(WIDTH/2, HEIGHT/2, 0, 0)];
    PopView.layer.cornerRadius = 5;
    PopView.layer.borderWidth = 0.5;
    PopView.layer.borderColor = [COLOR(120, 120, 120)CGColor];
    PopView.backgroundColor = COLOR(200, 200, 200);
    [self.view addSubview:PopView];
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, 0, 0)];
   // button.hidden = YES;
    button.backgroundColor = [UIColor clearColor];
    [button setImage:[UIImage imageNamed:@"Close.jpg"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTouchUpInside) forControlEvents:UIControlEventTouchUpInside];
    [PopView addSubview:button];
    
    TextField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    TextField.delegate = self;
    TextField.layer.cornerRadius = 5;
    TextField.layer.borderWidth = 0.5;
    TextField.layer.borderColor = [COLOR(120, 120, 120)CGColor];
    [PopView addSubview:TextField];
    
}
//label 点击事件
-(void) labelTouchUpInside:(UITapGestureRecognizer *)recognizer{
    
    UILabel *labeli=(UILabel*)recognizer.view;
    
    NSLog(@"%@被点击了",labeli.text);
    
    [self LabelHide];
    TextField.text = label.text;
}
// button 点击事件
-(void)buttonTouchUpInside
{
    [self LabelShow];
    label.text = TextField.text;
}

//收回视图
- (void)LabelShow
{
    [UIView animateWithDuration:0.5 animations:^{
        PopView.frame = CGRectMake(WIDTH/2, HEIGHT/2, 0, 0);
        [button setFrame:CGRectMake(0, 0, 0, 0)];
        TextField.frame = CGRectMake(0, 0, 0, 0);
    }];
    [TextField resignFirstResponder];
    
}
//弹出视图
- (void)LabelHide
{
    [UIView animateWithDuration:2.5 animations:^{
      PopView.frame = CGRectMake(WIDTH/2-100, HEIGHT/2-30, 200, 60);
        [button setFrame:CGRectMake(180, 3, 20, 20)];
        TextField.frame = CGRectMake(10, 28, 180, 30);
    }];

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
