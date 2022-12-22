//
//  ViewController.m
//  DragTheBoxSample
//
//  Created by rps on 22/12/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *elements;
    UIView *selectedView;
    
}
@synthesize textLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    selectedView= nil;
    elements = [[NSMutableArray alloc]init];
    //self.tiles = [NSMutableArray arrayWithCapacity:4];
    NSLog(@"view load method called");
    self.textLabel.text = @"Drag the box";
     float yy=85;
    for(int i=0;i<3;i++){
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0,0,100,100)];
        [self.view addSubview:view];
        view.tag = i;
        view.center= CGPointMake(yy, 220);
        view.backgroundColor = [UIColor yellowColor];
        
        [elements addObject:view];
        UIImageView *iview = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,100,100)];
        iview.image = [UIImage imageNamed:@"tulip.jpeg"];
        [self.view addSubview:iview];
        iview.center= CGPointMake(yy, 340);
        [elements addObject:iview];
            yy +=110;
            
    }
    
    
}
 
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint pt = [touch locationInView:self.view];
    selectedView= nil;
    for(UIView *vv in elements){
        if(CGRectContainsPoint(vv.frame, pt)){
             NSLog(@"view.tag:  %i", vv.tag);
            selectedView = vv;
            break;
        }
    }
}
 
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint pt = [touch locationInView:self.view];
    selectedView.center = pt;;
 
}
 
- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    selectedView = nil;
    
}
    // Do any additional setup after loading the view.



@end
