//
//  MoviesViewController.m
//  CustomizingTableViewCell
//
//  Created by rps on 20/12/22.
//

#import "MoviesViewController.h"
#import "Movie.h"
#import "MovieCell.h"
@interface MoviesViewController ()

@end

@implementation MoviesViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.movies = [NSMutableArray arrayWithCapacity:3];
    
    Movie *movie = [[Movie alloc] init];
    movie.title = @"Avengers";
    movie.poster = @"avengers.jpeg";
    movie.year = @"2012";
    [self.movies addObject:movie];
    
    movie = [[Movie alloc] init];
    movie.title = @"Black Panther";
    movie.poster = @"blackPanther.jpeg";
    movie.year = @"2020";
    [self.movies addObject:movie];
    
    movie = [[Movie alloc] init];
    movie.title = @"Harry Potter";
    movie.poster = @"harryPotter.jpeg";
    movie.year = @"2008";
    [self.movies addObject:movie];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
 
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.movies count];
}
 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MovieCell";
    MovieCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Movie *movie = (self.movies)[indexPath.row];
    cell= [[UIView alloc]initWithFrame:(CGRect)CGRectMake(0,0, 120, 80)];
    cell.titleLabel.text = movie.title;
    cell.yearLabel.text = movie.year;
    cell.posterImage.image = [UIImage imageNamed:movie.poster];
    
    
    return cell;
}

#pragma mark - Table view delegate
 
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
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
