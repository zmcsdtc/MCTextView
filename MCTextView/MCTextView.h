//
//  MCTextView.h
//  MCTextView
//
//  Created by ZMC on 16/2/29.
//  Copyright © 2016年 Zmc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCTextView : UITextView
/**
 *  placeholder文字
 */
@property(copy,nonatomic)NSString*placeholder;
/**
 *  提示文字的颜色
 */
@property(strong,nonatomic)UIColor*placeholerColor;

@property(strong,nonatomic)UIColor *placeholderEditColor;

/**
 *  最大高度-不设置的话就无最大高度
 */
@property(assign,nonatomic)CGFloat maxHeight;
@end
