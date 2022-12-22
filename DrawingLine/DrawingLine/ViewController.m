//
//  ViewController.m
//  DrawingLine
//
//  Created by rps on 21/12/22.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize myLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    MyView *myview = [[MyView alloc] initWithFrame:CGRectMake(20, 150, 355, 600)];
    myview.backgroundColor = [UIColor blackColor];
    myview.layer.cornerRadius = 20;
    [self.view addSubview:myview];
    self.myLabel.text = @"Drawing board";
    
        // Do any additional setup after loading the view.
}


@end
