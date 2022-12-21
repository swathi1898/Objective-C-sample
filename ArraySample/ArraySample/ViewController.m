//
//  ViewController.m
//  ArraySample
//
//  Created by rps on 19/12/22.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *objArr;
    float angle;
}
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    objArr = [[NSMutableArray alloc] init];
    for(int i = 0; i<20; i++){
        UIView *base = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        base.backgroundColor = [UIColor redColor];
        [objArr addObject:base];
        [self.view addSubview:base];
        
    }
    [self rotate];
    
}
-(void)rotate{
    float dx = (2*3.141)/objArr.count;
    for(UIView *view in objArr){
        float posx = 160 + 100 * cosf(angle);
        float posy = 260 + 100 * sinf(angle);
        view.center = CGPointMake(posx, posy);
        angle += dx;
    }
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}


@end
