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
@synthesize mScroll;
- (void)viewDidLoad {
    [super viewDidLoad];
    mainScroll =
    [[UIScrollView alloc]
                    initWithFrame:CGRectMake(10,60, 355,400)];
      //mainScroll.backgroundColor = [UIColor blueColor];
      [self.mScroll addSubview: mainScroll];
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
    float xx =40;
    for(int i=0;i<10;i++){
        UIImageView *view  = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,100, 100)];
        view.image = [UIImage imageNamed:@"tulip.jpeg"];
        [mainScroll addSubview:view];
        view.center= CGPointMake(40, yy);
        xx =40;
        for(int j =0; j<3;j++){
            UIImageView *view  = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,100, 100)];
            
            view.image = [UIImage imageNamed:@"tulip.jpeg"];
              [mainScroll addSubview:view];
            
              view.center= CGPointMake(xx, yy);
           
              xx+=120;
            UITapGestureRecognizer *recognizer =
                            [[UITapGestureRecognizer alloc]
                             initWithTarget:self action:@selector(handleTap:)];
                    view.userInteractionEnabled = TRUE;
                    [view addGestureRecognizer:recognizer];        }          yy+=120;
        
        UITapGestureRecognizer *recognizer =
                        [[UITapGestureRecognizer alloc]
                         
                         initWithTarget:self
                         action:@selector(handleTap:)];
                view.userInteractionEnabled = TRUE;
                [view addGestureRecognizer:recognizer];
    }
     float hei = 10*(40+10);
    mainScroll.contentSize = CGSizeMake(500, hei);
        
        
        }
- (void)handleTap:(UITapGestureRecognizer *)recognizer {
 
    NSLog(@"handleTap");
    GViewController *addProjectViewController = [[GViewController  alloc] init]; [self.navigationController pushViewController:addProjectViewController animated:YES];
    //GViewController* infoController = [self.storyboard instantiateViewControllerWithIdentifier:@"GVC"];
   //[self.navigationController pushViewController:infoController animated:YES];
    
}
 - (void)didReceiveMemoryWarning
  {
      [super didReceiveMemoryWarning];
      // Dispose of any resources that can be recreated.
  }
   


- (IBSegueAction GViewController *)nav:(NSCoder *)coder {
    return [[GViewController alloc] initWithCoder:coder];
}
@end
