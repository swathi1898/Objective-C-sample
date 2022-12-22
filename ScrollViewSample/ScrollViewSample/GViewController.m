//
//  GViewController.m
//  ScrollViewSample
//
//  Created by rps on 21/12/22.
//

#import "GViewController.h"

@interface GViewController ()

@end

@implementation GViewController
@synthesize poster;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *view = [[UIImageView alloc] initWithFrame:CGRectMake(20, 60, 350, 600)];
    view.image = [UIImage imageNamed:@"avengers.jpeg"];
    [self.poster addSubview:view];
    // Do any additional setup after loading the view.
    //UIView *poster = [[UIView alloc] initWithFrame:CGRectMake(20, 60, 250, 400)];
    UIPinchGestureRecognizer *pinchGest =[[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(onPinchGesture:)];
        [self.poster addGestureRecognizer:pinchGest];
     
    self.poster.userInteractionEnabled = TRUE;
    
}
-(void)onPinchGesture:(UIPinchGestureRecognizer*)recognizer{
    
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale , recognizer.scale);
    recognizer.scale=1;
 
    NSLog(@"tap gesture detected scale: %f   ", recognizer.scale);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
