//
//  ViewController.m
//  HelloWorld
//
//  Created by rps on 18/12/22.
//

#import "ViewController.h"
#import "MyCar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyCar *car1 = [[MyCar alloc] initWithFrame:CGRectMake(80, 80,150, 150)];
    [self.view addSubview:car1];
    
    MyCar *car2 = [[MyCar alloc] initWithFrame:CGRectMake(180, 280,140, 100)];
    [self.view addSubview:car2];
    [car2 changeColor:UIColor.blueColor];
    
    
    
    
    
    
    
    /*
    UIView *view = [[UIView alloc] initWithFrame:(CGRect)CGRectMake(80, 80, 70, 50)];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor redColor];
    UIView *view1 = [[UIView alloc] initWithFrame:(CGRect)CGRectMake(75, 75, 20, 10)];
    [self.view addSubview:view1];
    view1.backgroundColor = [UIColor blackColor];
    UIView *view2 = [[UIView alloc] initWithFrame:(CGRect)CGRectMake(135, 75, 20, 10)];
    [self.view addSubview:view2];
    view2.backgroundColor = [UIColor blackColor];
    UIView *view3 = [[UIView alloc] initWithFrame:(CGRect)CGRectMake(75, 125, 20, 10)];
    [self.view addSubview:view3];
    view3.backgroundColor = [UIColor blackColor];
    UIView *view4 = [[UIView alloc] initWithFrame:(CGRect)CGRectMake(135, 125, 20, 10)];
    [self.view addSubview:view4];
    view4.backgroundColor = [UIColor blackColor];
    */
    // Do any additional setup after loading the view.
    char letter = 'z';
    NSLog(@"The ASCII char %c is %i", letter, letter);
    
    /*
    MyCar *car1 = [[MyCar alloc] initWithFrame:CGRectMake(80, 80,150, 150)];
    [self.view addSubview:car1];
    // car1.backgroundColor = [UIColor tintColor];
    
    MyCar *car2 = [[MyCar alloc] initWithFrame:CGRectMake(180, 280,140, 100)];
    [self.view addSubview:car2];
    [car2 changeColor:UIColor.blueColor];
     */
}


@end
