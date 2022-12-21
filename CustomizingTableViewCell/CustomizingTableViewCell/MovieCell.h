//
//  MovieCell.h
//  CustomizingTableViewCell
//
//  Created by rps on 20/12/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterImage;
@property (weak, nonatomic) IBOutlet UILabel *yearLabel;

@end

NS_ASSUME_NONNULL_END
