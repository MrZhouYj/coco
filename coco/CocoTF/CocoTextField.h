//
//  CocoTextField.h
//  coco
//
//  Created by 周永建 on 16/7/15.
//  Copyright © 2016年 xinde. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CocoTextField : UITextField

-(void)setLeftLbel:(NSString*)leftS placeHodel:(NSString*)placeH right:(NSString*)image;

-(void)setLeftLbel:(NSString *)leftS placeHodel:(NSString *)placeH;

-(void)setLeftTitle:(NSString*)title placeHodel:(NSString*)placeH color:(UIColor*)color;

-(void)setLeftImage:(NSString *)lLmage RightImage:(NSString *)rImage;

-(void)setLeftImage:(NSString *)lImage;
@end
