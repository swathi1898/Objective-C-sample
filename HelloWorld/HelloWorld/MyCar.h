//
//  MyCar.h
//  HelloWorld
//
//  Created by rps on 19/12/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyCar : UIView
{
    UIView *carBase;
}


-(void)createBody;
-(void)changeColor:(UIColor*)color;



@end

NS_ASSUME_NONNULL_END
