//
//  ViewController.m
//  BoxSample
//
//  Created by rps on 19/12/22.
//

#import "ViewController.h"
#import "MyBox.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyBox *mainBox1 = [[MyBox alloc] initWithFrame:CGRectMake(15, 60, 345, 180)];
    [self.view addSubview:mainBox1];
    
    MyBox *mainBox3 = [[MyBox alloc] initWithFrame:CGRectMake(15, 550, 345, 180)];
    [self.view addSubview:mainBox3];}


@end
