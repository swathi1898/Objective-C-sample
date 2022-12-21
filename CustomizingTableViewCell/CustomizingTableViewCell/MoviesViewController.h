//
//  MoviesViewController.h
//  CustomizingTableViewCell
//
//  Created by rps on 20/12/22.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MoviesViewController : UITableViewController<UIScrollViewDelegate>
@property (nonatomic, strong) NSMutableArray *movies;

@end

NS_ASSUME_NONNULL_END
