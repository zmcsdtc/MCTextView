//
//  MCTextView.m
//  MCTextView
//
//  Created by ZMC on 16/2/29.
//  Copyright © 2016年 Zmc. All rights reserved.
//

#import "MCTextView.h"
#import "NSString+Common.h"
@implementation MCTextView
{
    UILabel*_label;
}
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        UILabel*label=[[UILabel alloc]init];
        [self addSubview:label];
        label.numberOfLines=0;
        label.textColor=[UIColor lightGrayColor];
        _label=label;
        //默认17
        self.font=[UIFont systemFontOfSize:17];
        //默认最大68
        self.maxHeight=68;
        //第二个self表示只监听当前的这个textview,如果是nil的话就是监听所有的,第一个self表示观察者
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textChange) name:UITextViewTextDidChangeNotification object:self];
        
    }
    return self;
}
- (void) dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
#pragma mark-通知监听
- (void)textChange{
    if (self.text.length>0) {
        _label.hidden=YES;
    }
    else{
        _label.hidden=NO;
    }
    CGFloat maxHeight = self.maxHeight;//textView最大的高度
    CGRect frame=self.frame;
    // 获取contentSize的高度
    CGFloat contentHeight = self.contentSize.height;
    if (contentHeight > maxHeight){
        frame.size.height = maxHeight;
        self.frame=frame;
    }else{
        frame.size.height = contentHeight;
        self.frame=frame;
    }

    
}
- (void) layoutSubviews{
    [super layoutSubviews];
    _label.frame=CGRectMake(5, 6, self.bounds.size.width-10, [NSString heightByString:_placeholder font:_label.font width:self.bounds.size.width-10]);
}

- (void)setPlaceholder:(NSString *)placeholder{
    _placeholder=[placeholder copy];
    _label.text=placeholder;
    [self setNeedsLayout];
}
//重写字体设置
- (void) setFont:(UIFont *)font{
    [super setFont:font];
    _label.font=font;
}
@end
