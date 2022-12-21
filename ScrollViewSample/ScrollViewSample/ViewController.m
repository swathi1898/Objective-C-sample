//
//  ViewController.m
//  ScrollViewSample
//
//  Created by rps on 21/12/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIScrollView * mainScroll;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    mainScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(10,60, 355,400)];
      //mainScroll.backgroundColor = [UIColor blueColor];
      [self.view addSubview: mainScroll];
      //mainScroll.center = CGPointMake(160, 200);
      mainScroll.delegate= self;
      
      mainScroll.bouncesZoom = NO;
     mainScroll.pagingEnabled = YES;
      mainScroll.showsHorizontalScrollIndicator = NO;
      mainScroll.showsVerticalScrollIndicator = YES;
      mainScroll.scrollsToTop = YES;
     mainScroll.contentSize = CGSizeMake( 960, 340);
      //mainScroll.clipsToBounds = NO;
      /*
    float yy =40;
    float xx =40;
    UIImageView *view  = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,100, 100)];
    view.image = [UIImage imageNamed:@"tulip.jpeg"];
    for(int i=0;i<10;i++){
        
        [mainScroll addSubview:view];
        view.center= CGPointMake(40, yy);
        
        for(int j =0; j<3;j++){
              [mainScroll addSubview:view];
            
              view.center= CGPointMake(xx, yy);
           
              xx+=120;
            
        }          yy+=120;
      }
   
    float hei = 10*(40+10);
      mainScroll.contentSize = CGSizeMake(500, hei);
       */
       
    
    float yy =40;
    for(int i=0;i<10;i++){
        UIImageView *view  = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,100, 100)];
        view.image = [UIImage imageNamed:@"tulip.jpeg"];
        [mainScroll addSubview:view];
        view.center= CGPointMake(40, yy);
        float xx =40;
        for(int j =0; j<3;j++){
            UIImageView *view  = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,100, 100)];
            
            view.image = [UIImage imageNamed:@"tulip.jpeg"];
              [mainScroll addSubview:view];
            
              view.center= CGPointMake(xx, yy);
           
              xx+=120;
            
        }          yy+=120;
      }
   
    float hei = 10*(40+10);
      mainScroll.contentSize = CGSizeMake(500, hei);
        
        
        }
   
  - (void)didReceiveMemoryWarning
  {
      [super didReceiveMemoryWarning];
      // Dispose of any resources that can be recreated.
  }
   


@end
