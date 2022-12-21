//
//  ViewController.m
//  TableViewCode
//
//  Created by rps on 19/12/22.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * tableData;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tableData = [[NSArray alloc] initWithObjects:@"Ram", @"Shyam",  @"Jadu", @"Madu",@"Venu",@"Krish", @"Meg" ,nil];
    UITableView   *tableView = [[UITableView alloc] initWithFrame:CGRectMake(20, 60, 350, 500)];
    [self.view addSubview:tableView];
    tableView.backgroundColor  = [UIColor yellowColor];
    
    tableView.delegate = self;
    tableView.dataSource = self;

}

-(NSInteger) numberOfSectionInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return tableData.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"MyTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
    }
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    
    return cell;
}



@end
