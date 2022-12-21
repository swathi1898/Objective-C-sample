//
//  ViewController.h
//  CalSample
//
//  Created by rps on 21/12/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *input1;
@property (weak, nonatomic) IBOutlet UITextField *input2;
@property (weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)Add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)Multiply:(id)sender;
- (IBAction)Divide:(id)sender;



@end

