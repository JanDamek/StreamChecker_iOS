//
//  HistoryViewController.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "HistoryViewController.h"
#import "HomeViewController.h"
#import "InfoViewController.h"
#import "SettingsViewController.h"
#import "checkerAppDelegate.h"

@implementation HistoryViewController
@synthesize tableView1Data;


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // ----------------------------;
  // View Controller Root View;
  // ----------------------------;
  
  self.view.backgroundColor = [UIColor colorWithRed:0.4 green:0.63 blue:1.0 alpha:1.0];
  UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
  contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  
  // ----------------------------;
  // UITabBar -> tabBar1;
  // ----------------------------;
  
  UITabBar *tabBar1 = [[UITabBar alloc] initWithFrame:CGRectMake(0, 411, 320, 49)];
  tabBar1.tag = 1;
  tabBar1.delegate = (id<UITabBarDelegate>)self;
  [contentView addSubview:tabBar1];
  tabBar1.alpha = 1.0;
  tabBar1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
  
  
  // ----------------------------;
  // Tab Bar Item -> tabBarItem1;
  // ----------------------------;
  
  UITabBarItem *tabBarItem1 = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"HistoryViewController_Image_1.png"] tag:1];
  
  
  // ----------------------------;
  // Tab Bar Item -> tabBarItem2;
  // ----------------------------;
  
  UITabBarItem *tabBarItem2 = [[UITabBarItem alloc] initWithTitle:@"Info" image:[UIImage imageNamed:@"HistoryViewController_Image_2.png"] tag:2];
  
  
  // ----------------------------;
  // Tab Bar Item -> tabBarItem3;
  // ----------------------------;
  
  UITabBarItem *tabBarItem3 = [[UITabBarItem alloc] initWithTitle:@"History" image:[UIImage imageNamed:@"HistoryViewController_Image_3.png"] tag:3] ;
  
  
  // ----------------------------;
  // Tab Bar Item -> tabBarItem4;
  // ----------------------------;
  
  UITabBarItem *tabBarItem4 = [[UITabBarItem alloc] initWithTitle:@"Settings" image:[UIImage imageNamed:@"HistoryViewController_Image_4.png"] tag:4];
  
  tabBar1.items = [NSArray arrayWithObjects:tabBarItem1, tabBarItem2, tabBarItem3, tabBarItem4, nil];
    tabBar1.selectedItem = tabBarItem3;

  // ----------------------------;
  // UINavigationBar -> navigationBar1;
  // ----------------------------;
  
  UINavigationBar *navigationBar1 = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
  navigationBar1.delegate = (id<UINavigationBarDelegate>)self;
  UINavigationItem *navigationBar1BackItem = [[UINavigationItem alloc] initWithTitle:nil];
  UINavigationItem *navigationBar1TopItem = [[UINavigationItem alloc] initWithTitle:nil];
  NSArray *navigationBar1Items = [NSArray arrayWithObjects:navigationBar1BackItem, navigationBar1TopItem, nil];
  [navigationBar1 setItems:navigationBar1Items animated:NO];
  [contentView addSubview:navigationBar1];
  navigationBar1.alpha = 1.0;
  navigationBar1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
  navigationBar1.barStyle = UIBarStyleDefault;
  navigationBar1.tintColor = [UIColor colorWithRed:0.07 green:0.57 blue:1.0 alpha:1.0];
  navigationBar1.topItem.title = @"Streams History";
  [navigationBar1 setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
  navigationBar1.topItem.hidesBackButton = YES;
  
  // ----------------------------;
  // Navigation Bar Right Button -> barButton1;
  // ----------------------------;
  
  UIBarButtonItem *barButton1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:nil action:nil];
  barButton1.target = self;
  barButton1.action = @selector(didTap_barButton1:forEvent:);
  
  navigationBar1.topItem.rightBarButtonItem = barButton1;
  
  
  // ----------------------------;
  // UIWebView -> webView1;
  // ----------------------------;
  
    UIView *webView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 363, 320, 50)];
    [webView1 addSubview:[checkerAppDelegate getBanner]];
    [contentView addSubview:webView1];
  
  
  // ----------------------------;
  // UITableView -> tableView1;
  // ----------------------------;
  
  UITableView *tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 44, 320, 319) style:UITableViewStylePlain];
  tableView1.tag = 1;
  tableView1.delegate = (id<UITableViewDelegate>)self;
  tableView1.dataSource = (id<UITableViewDataSource>)self;
  self.tableView1Data = [NSMutableArray array];
  [contentView addSubview:tableView1];
  tableView1.alpha = 1.0;
  tableView1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  tableView1.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
  tableView1.separatorColor = [UIColor colorWithRed:0.37 green:0.75 blue:1.0 alpha:1.0];
  tableView1.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  
  
  // ----------------------------;
  // Table View Section -> tableViewSection1;
  // ----------------------------;
  
  NSMutableDictionary *tableViewSection1Data = [NSMutableDictionary dictionary];
  [tableViewSection1Data setObject:@"History for mount" forKey:@"headerText"];
  [tableViewSection1Data setObject:@"" forKey:@"footerText"];
  [tableViewSection1Data setObject:[NSMutableArray array] forKey:@"cells"];
  [self.tableView1Data addObject:tableViewSection1Data];
  
  // ----------------------------;
  // Cell -> tableViewCell1;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell1Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
  tableViewCell1.textLabel.text = @"Cas vypadku mountu";
  tableViewCell1.detailTextLabel.text = @"Subtitle";
  tableViewCell1.accessoryType = UITableViewCellAccessoryNone;
  tableViewCell1.textLabel.textColor = [UIColor colorWithRed:0.84 green:0.0 blue:0.0 alpha:1.0];
  [tableViewCell1Data setObject:tableViewCell1 forKey:@"cell"];
  [tableViewCell1Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell1Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell1Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell1Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell1Data];
  
  // ----------------------------;
  // Cell -> tableViewCell2;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell2Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil] ;
  tableViewCell2.textLabel.text = @"Cas obnoveni mountu";
  tableViewCell2.detailTextLabel.text = @"Reconnect";
  tableViewCell2.accessoryType = UITableViewCellAccessoryNone;
  tableViewCell2.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  tableViewCell2.textLabel.textColor = [UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
  [tableViewCell2Data setObject:tableViewCell2 forKey:@"cell"];
  [tableViewCell2Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell2Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell2Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell2Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell2Data];
  
  // ----------------------------;
  // Custom Header -> tableViewHeaderView1;
  // ----------------------------;
  
  UIView *tableViewHeaderView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
  [tableViewSection1Data setObject:tableViewHeaderView1 forKey:@"headerView"];
  [tableViewSection1Data setObject:[NSNumber numberWithFloat:60] forKey:@"customHeaderViewHeight"];
  
  // ----------------------------;
  // Custom Footer -> tableViewFooterView1;
  // ----------------------------;
  
  UIView *tableViewFooterView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
  [tableViewSection1Data setObject:tableViewFooterView1 forKey:@"footerView"];
  [tableViewSection1Data setObject:[NSNumber numberWithFloat:60] forKey:@"customFooterViewHeight"];
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];
}

- (void)viewDidUnload {
  self.tableView1Data = nil;
  [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:animated];
}

// ----------------
// Table View
// ----------------

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  if (tableView.tag == 1) {;
    return self.tableView1Data.count;
  };
  
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [[sectionData objectForKey:@"cells"] count];
  };
  
  return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [cellData objectForKey:@"cell"];
  };
  
  return [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [sectionData objectForKey:@"headerText"];
  };
  
  return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [sectionData objectForKey:@"footerText"];
  };
  
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [[cellData objectForKey:@"height"] floatValue];
  };
  
  return tableView.rowHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customHeaderView"] boolValue]) {;
      return [sectionData objectForKey:@"headerView"];
    } else {;
      return nil;
    };
  };
  
  return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customFooterView"] boolValue]) {;
      return [sectionData objectForKey:@"footerView"];
    } else {;
      return nil;
    };
  };
  
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customHeaderView"] boolValue]) {;
      return [[sectionData objectForKey:@"customHeaderViewHeight"] floatValue];
    } else {;
      if (![[sectionData objectForKey:@"headerText"] isEqualToString:@""]) {;
        return 22;
      } else {;
        return 0;
      };
    };
  };
  
  return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customFooterView"] boolValue]) {;
      return [[sectionData objectForKey:@"customFooterViewHeight"] floatValue];
    } else {;
      if (![[sectionData objectForKey:@"footerText"] isEqualToString:@""]) {;
        return 22;
      } else {;
        return 0;
      };
    };
  };
  
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [[cellData objectForKey:@"indentationLevel"] integerValue];
  };
  
  return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    NSString *actionSelector = [cellData objectForKey:@"actionSelector"];
    if (actionSelector) {;
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        [self performSelector:NSSelectorFromString(actionSelector) withObject:cell];
    };
  };
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


// ----------------
// Tab Bar
// ----------------

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
  if (tabBar.tag == 1 && item.tag == 1) {;
    [self didTap_tabBarItem1];
  };
  if (tabBar.tag == 1 && item.tag == 2) {;
    [self didTap_tabBarItem2];
  };
  if (tabBar.tag == 1 && item.tag == 4) {;
    [self didTap_tabBarItem4];
  };
}


// ----------------
// Navigation Bar
// ----------------

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
  return NO;
}

// ----------------
// Action
// ----------------

- (void)didTap_tabBarItem1 {
  HomeViewController *controller = [[HomeViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];

}
- (void)didTap_tabBarItem2 {
  InfoViewController *controller = [[InfoViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];

}
- (void)didTap_tabBarItem4 {
  SettingsViewController *controller = [[SettingsViewController alloc] init];
  [self.navigationController pushViewController:controller animated:YES];

}
- (void)didTap_barButton1:(id)sender forEvent:(UIEvent *)event {
  UIAlertView *alertView = [[UIAlertView alloc] init];
  alertView.title = @"Are you delete all history ?";
  alertView.message = @"";
  [alertView addButtonWithTitle:@"Ok"];
  [alertView addButtonWithTitle:@"Done"];
  [alertView show];

}




@end