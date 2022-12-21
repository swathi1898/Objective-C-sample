//
//  MyCar.m
//  HelloWorld
//
//  Created by rps on 19/12/22.
//

#import "MyCar.h"

@implementation MyCar

-(id)initWithFrame:(CGRect)frame{
    
    NSLog(@"initWithFrame");
    if([super initWithFrame:frame]){
        [self createBody];
        [self createWheel];
        return self;
    }
    
    return nil;
}

-(void)createBody{
    carBase = [[UIView alloc]initWithFrame:(CGRect)CGRectMake(0,0, 120, 80)];
    [self addSubview:carBase];
    carBase.backgroundColor = [UIColor yellowColor];
}

-(void)changeColor:(UIColor*)color{
    carBase.backgroundColor = color;
}
-(void)createWheel{
    UIView *wheel1 = [[UIView alloc]initWithFrame:(CGRect)CGRectMake(90, 75, 50, 25)];
    [self addSubview:wheel1];
    wheel1.backgroundColor = [UIColor blackColor];
    
    UIView *wheel2 = [[UIView alloc]initWithFrame:(CGRect)CGRectMake(-20, 75, 50, 25)];
    [self addSubview:wheel2];
    wheel2.backgroundColor = [UIColor blackColor];
        
    UIView *wheel3= [[UIView alloc]initWithFrame:(CGRect)CGRectMake(90, -15, 50, 25)];
    [self addSubview:wheel3];
    wheel3.backgroundColor = [UIColor blackColor];
    
    UIView *wheel4 = [[UIView alloc]initWithFrame:(CGRect)CGRectMake(-20, -15, 50, 25)];
    [self addSubview:wheel4];
    wheel4.backgroundColor = [UIColor blackColor];
    
}



@end
