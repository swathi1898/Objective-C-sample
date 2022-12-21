//
//  DetailVC.h
//  TableViewSB
//
//  Created by rps on 20/12/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property NSString *name;

@end

NS_ASSUME_NONNULL_END
