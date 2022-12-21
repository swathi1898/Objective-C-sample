//
//  DetailVC.m
//  TableViewSB
//
//  Created by rps on 20/12/22.
//

#import "DetailVC.h"

@interface DetailVC ()

@end

@implementation DetailVC

@synthesize name;
@synthesize detailLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.detailLabel.text = name;
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
