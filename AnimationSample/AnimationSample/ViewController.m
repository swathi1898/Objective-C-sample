//
//  ViewController.m
//  AnimationSample
//
//  Created by rps on 26/12/22.
//

#import "ViewController.h"
#import "SampleClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /* my first program in Objective-C */
    SampleClass *sampleClass = [[SampleClass alloc]init];
    [sampleClass performActionWithCompletion:^{
       NSLog(@"Completion is called to intimate action is performed.");
        //myview.layer.cornerRadius = 20;
        UIImageView *view = [[UIImageView alloc] initWithFrame:CGRectMake(50, 75, 50, 50)];
        view.image =[UIImage imageNamed:@"flower.png"];
        //UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 75, 50, 50) ];
        //view.backgroundColor = [UIColor redColor];
        [self.view addSubview:view];
        
        for(int i =0;i<4;i++){
            
        }
        [UIView animateKeyframesWithDuration:1.5
                                              delay:1.0                                    options:UIViewKeyframeAnimationOptionCalculationModeLinear
                                         animations:^{
                view.frame = CGRectMake(view.frame.origin.x + 200, view.frame.origin.y, view.frame.size.width+100, view.frame.size.height+100);
                
                                         }
                                         completion:^(BOOL finished) { }];
        
        [UIView animateKeyframesWithDuration:1.5
                                              delay:2.0                                    options:UIViewKeyframeAnimationOptionCalculationModeLinear
                                         animations:^{
                view.frame = CGRectMake(view.frame.origin.x , view.frame.origin.y+200, view.frame.size.width-100, view.frame.size.height-100);
                
                                         }
                                         completion:^(BOOL finished) { }];
        
        [UIView animateKeyframesWithDuration:1.5
                                              delay:3.0                                    options:UIViewKeyframeAnimationOptionCalculationModeLinear
                                         animations:^{
                view.frame = CGRectMake(view.frame.origin.x-200 , view.frame.origin.y, view.frame.size.width+100, view.frame.size.height+100);
                
                                         }
                                         completion:^(BOOL finished) { }];
        
        
        [UIView animateKeyframesWithDuration:1.5
                                              delay:4.0                                    options:UIViewKeyframeAnimationOptionCalculationModeLinear
                                         animations:^{
                view.frame = CGRectMake(view.frame.origin.x , view.frame.origin.y-200, view.frame.size.width-100, view.frame.size.height-100);
                
                                         }
                                         completion:^(BOOL finished) { }];
        
    }];
  }


@end
