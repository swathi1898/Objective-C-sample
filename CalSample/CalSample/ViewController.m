//
//  ViewController.m
//  CalSample
//
//  Created by rps on 21/12/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)Divide:(id)sender {
    int i1 = [self.input1.text intValue];
    int i2 = [self.input2.text intValue];
    
    int divide = i1/i2;
    //NSLog(@"DIVIDE: %f", (double)1/120);
    self.result.text = [NSString stringWithFormat:@"%d", divide];
}

- (IBAction)Multiply:(id)sender {
    int i1 = [self.input1.text intValue];
    int i2 = [self.input2.text intValue];
    
    int multiply = i1*i2;
    
    self.result.text = [NSString stringWithFormat:@"%i", multiply];
}

- (IBAction)subtract:(id)sender {
    int i1 = [self.input1.text intValue];
    int i2 = [self.input2.text intValue];
    
    int sub = i1-i2;
    
    self.result.text = [NSString stringWithFormat:@"%i", sub];
    
}

- (IBAction)Add:(id)sender {
    int i1 = [self.input1.text intValue];
    int i2 = [self.input2.text intValue];
    
    int add = i1 +i2;
    
    self.result.text = [NSString stringWithFormat:@"%i", add];
    
}
@end
