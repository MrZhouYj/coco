//
//  CocoTextField.m
//  coco
//
//  Created by 周永建 on 16/7/15.
//  Copyright © 2016年 xinde. All rights reserved.
//

#import "CocoTextField.h"

@implementation CocoTextField
-(instancetype)init{
    
    self = [super init];
    if (self) {
        
        self.returnKeyType=UIReturnKeyDone;
        self.backgroundColor = [UIColor whiteColor];
        
        
        
    }
    return self;
}




-(void)setLeftImage:(NSString *)lImage{
    
    self.font=[UIFont systemFontOfSize:14];
    
    UIView * leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    
    UIImageView* leftImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 0, 20, 20)];
    [leftView addSubview:leftImage];
    
    leftImage.center=leftView.center;
    
    //        CocoTextField
    self.leftViewMode=UITextFieldViewModeAlways;
    
    self.leftView=leftView;
    
    
    self.layer.cornerRadius=5;
    self.layer.masksToBounds=YES;
    
    leftImage.image = [UIImage imageNamed:lImage];
    
}

-(void)setLeftImage:(NSString *)lLmage RightImage:(NSString *)rImage{
    
    
    
    [self setLeftImage:lLmage];
    
    UIView *  right = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    
    UIImageView*  RImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 0, 20, 20)];
    [right addSubview:RImage];
    
    RImage.center=right.center;
    
    self.rightViewMode=UITextFieldViewModeAlways;
    
    self.rightView=right;
    RImage.image = [UIImage imageNamed:rImage];
    
}


-(void)setLeftLbel:(NSString *)leftS placeHodel:(NSString *)placeH right:(NSString *)image{
    
    self.backgroundColor = [UIColor whiteColor];
    
    self.font = [UIFont systemFontOfSize:14];
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 110, 50)];
    
    UILabel * label = [[UILabel alloc] init];
    
    label.text=leftS;
    label.font=[UIFont systemFontOfSize:14];
    
    [view addSubview:label];
    
    CGSize size;
    
    label.frame=CGRectMake(15, 0, size.width, 50);
    
    self.leftView=view;
    self.leftViewMode=UITextFieldViewModeAlways;
    
    self.placeholder=placeH;
    
    
    
    
    if (image!=nil) {
        
        UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 50)];
        
        UIButton * imageV = [UIButton buttonWithType:UIButtonTypeSystem];
        
        [view addSubview:imageV];
        
        [imageV setImage:[[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        
        imageV.frame=CGRectMake(0, 0, 15, 15);
        imageV.center=view.center;
        
        self.rightView=view;
        self.rightViewMode=UITextFieldViewModeAlways;
        
    }
    
    
}
-(void)setLeftLbel:(NSString *)leftS placeHodel:(NSString *)placeH{
    
    [self setLeftLbel:leftS placeHodel:placeH right:nil];
    
    
}

-(void)setLeftTitle:(NSString *)title placeHodel:(NSString*)placeH color:(UIColor *)color{
    
    self.placeholder=placeH;
    
    self.font = [UIFont systemFontOfSize:14];
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    
    UILabel * label = [[UILabel alloc]init];
    
    [view addSubview:label];
    
    label.textAlignment=1;
    
    label.frame=CGRectMake(0, 0, 8, 8);
    label.center=view.center;
    label.layer.masksToBounds=YES;
    label.layer.cornerRadius=label.frame.size.width/2.f;
    label.backgroundColor = [UIColor whiteColor];
    label.layer.borderColor=color.CGColor;
    label.layer.borderWidth=2;
    
    self.leftView=view;
    self.leftViewMode=UITextFieldViewModeAlways;
}

@end
