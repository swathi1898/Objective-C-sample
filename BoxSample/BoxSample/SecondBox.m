//
//  SecondBox.m
//  BoxSample
//
//  Created by rps on 19/12/22.
//

#import "SecondBox.h"

@implementation SecondBox
-(id)initWithFrame:(CGRect)frame{
    
    NSLog(@"initWithFrame");
    if([super initWithFrame:frame]){
        [self createMainBox1];
        [self createSubBox];
        return self;
    }
    
    return nil;
}

-(void)createMainBox1{
    secondBoxBase = [[UIView alloc]initWithFrame:(CGRect)CGRectMake(0, 0, 345, 160)];
    [self addSubview:secondBoxBase];
    secondBoxBase.backgroundColor = [UIColor lightGrayColor];
    
    
}
-(void)createSubBox{
    UIView *subBox1 = [[UIView alloc]initWithFrame:(CGRect)CGRectMake(10, 10, 100, 60)];
    [self addSubview:subBox1];
    subBox1.backgroundColor = [UIColor orangeColor];
    
    UIView *subBox2 = [[UIView alloc]initWithFrame:(CGRect)CGRectMake(120, 10, 100, 60)];
    [self addSubview:subBox2];
    subBox2.backgroundColor = [UIColor orangeColor];
    
    UIView *subBox3 = [[UIView alloc]initWithFrame:(CGRect)CGRectMake(230, 10, 100, 60)];
    [self addSubview:subBox3];
    subBox3.backgroundColor = [UIColor orangeColor];
    
    UIView *subBox4= [[UIView alloc]initWithFrame:(CGRect)CGRectMake(10, 80, 325, 60)];
    [self addSubview:subBox4];
    subBox4.backgroundColor = [UIColor orangeColor];
    
}@end
