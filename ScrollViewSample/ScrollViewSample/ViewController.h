//
//  ViewController.h
//  ScrollViewSample
//
//  Created by rps on 21/12/22.
//

#import <UIKit/UIKit.h>
#import "GViewController.h"
@interface ViewController : UIViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *mScroll;
- (IBSegueAction GViewController *)nav:(NSCoder *)coder;



@end

