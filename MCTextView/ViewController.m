//
//  ViewController.m
//  MCTextView
//
//  Created by ZMC on 16/2/29.
//  Copyright © 2016年 Zmc. All rights reserved.
//

#import "ViewController.h"
#import "MCTextView.h"
@interface ViewController ()
@property(strong,nonatomic)MCTextView*tv;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MCTextView*textview=[[MCTextView alloc]initWithFrame:CGRectMake(0, 420, self.view.bounds.size.width, 120)];
    textview.backgroundColor=[UIColor redColor];
    textview.placeholder=@"我是天才";
    [self.view addSubview:textview];
    textview.font=[UIFont systemFontOfSize:80];
    textview.maxHeight=200;
    textview.placeholerColor=[UIColor lightGrayColor];
    textview.textColor=[UIColor orangeColor];
    self.tv=textview;
    
}
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.tv resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
