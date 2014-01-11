//
//  AddStreamView2ViewController.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "AddStreamView2ViewController.h"
#import "SetIntervalViewController.h"
#import "ServerTypeViewController.h"
#import "FormatViewController.h"
#import "checkerAppDelegate.h"
#import "checkerDataManager.h"


@implementation AddStreamView2ViewController
@synthesize tableView1Data;


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    checkerAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    _data = delegate.data;
    
    // ----------------------------;
    // View Controller Root View;
    // ----------------------------;
    
    self.view.backgroundColor = [UIColor colorWithRed:0.82 green:0.82 blue:0.82 alpha:1.0];
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
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
    navigationBar1.topItem.title = @"Add stream";
    [navigationBar1 setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
    
    // ----------------------------;
    // Navigation Bar Lef Button -> barButton1;
    // ----------------------------;
    
    UIBarButtonItem *barButton1 = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    barButton1.target = self;
    barButton1.action = @selector(didTap_barButton1:forEvent:);
    
    navigationBar1.topItem.hidesBackButton = NO;
    navigationBar1.backItem.backBarButtonItem = barButton1;
    
    
    // ----------------------------;
    // UITableView -> tableView1;
    // ----------------------------;
    
    tableView1 = [[TPKeyboardAvoidingTableView alloc] initWithFrame:CGRectMake(0, 44, 320, 361) style:UITableViewStyleGrouped];
    tableView1.tag = 1;
    tableView1.delegate = (id<UITableViewDelegate>)self;
    tableView1.dataSource = (id<UITableViewDataSource>)self;
    self.tableView1Data = [NSMutableArray array];
    [contentView addSubview:tableView1];
    tableView1.alpha = 1.0;
    tableView1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    tableView1.separatorStyle = UITableViewCellSeparatorStyleSingleLineEtched;
    tableView1.separatorColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.18];
    tableView1.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    
    
    // ----------------------------;
    // Table View Section -> tableViewSection1;
    // ----------------------------;
    
    NSMutableDictionary *tableViewSection1Data = [NSMutableDictionary dictionary];
    [tableViewSection1Data setObject:@"Nastavení rádia" forKey:@"headerText"];
    [tableViewSection1Data setObject:@"" forKey:@"footerText"];
    [tableViewSection1Data setObject:[NSMutableArray array] forKey:@"cells"];
    [self.tableView1Data addObject:tableViewSection1Data];
    
    // ----------------------------;
    // Custom Cell -> tableViewCell1;
    // ----------------------------;
    
    NSMutableDictionary *tableViewCell1Data = [NSMutableDictionary dictionary];
    UIView *tableViewCell1CustomView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 49)];
    tableViewCell1CustomView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    UITableViewCell *tableViewCell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    tableViewCell1.accessoryType = UITableViewCellAccessoryNone;
    [tableViewCell1Data setObject:tableViewCell1 forKey:@"cell"];
    [tableViewCell1Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
    [tableViewCell1Data setObject:[NSNumber numberWithFloat:50.0] forKey:@"height"];
    [tableViewCell1Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
    [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell1Data];
    
    // ----------------------------;
    // UILabel -> label1;
    // ----------------------------;
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 73, 49)];
    [tableViewCell1CustomView addSubview:label1];
    label1.alpha = 1.0;
    label1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
    label1.text = @"Radio";
    label1.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    label1.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    label1.textAlignment = UITextAlignmentLeft;
    label1.shadowOffset = CGSizeMake(0, -1);
    label1.font = [UIFont fontWithName:@"Helvetica-Bold" size:17.0];
    
    
    // ----------------------------;
    // UITextField -> textField1;
    // ----------------------------;
    
    textField1 = [[UITextField alloc] initWithFrame:CGRectMake(83, 0, 217, 49)];
    [tableViewCell1CustomView addSubview:textField1];
    textField1.alpha = 1.0;
    textField1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
    textField1.text = _data.name;
    textField1.borderStyle = UITextBorderStyleNone;
    textField1.textAlignment = UITextAlignmentCenter;
    textField1.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField1.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    textField1.clearButtonMode = UITextFieldViewModeAlways;
    textField1.font = [UIFont fontWithName:@"Helvetica" size:17.0];
    
    tableViewCell1CustomView.frame = tableViewCell1.contentView.bounds;
    [tableViewCell1.contentView addSubview:tableViewCell1CustomView];
    
    // ----------------------------;
    // Custom Cell -> tableViewCell2;
    // ----------------------------;
    
    NSMutableDictionary *tableViewCell2Data = [NSMutableDictionary dictionary];
    UIView *tableViewCell2CustomView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 49)];
    tableViewCell2CustomView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    UITableViewCell *tableViewCell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] ;
    tableViewCell2.accessoryType = UITableViewCellAccessoryNone;
    [tableViewCell2Data setObject:tableViewCell2 forKey:@"cell"];
    [tableViewCell2Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
    [tableViewCell2Data setObject:[NSNumber numberWithFloat:50.0] forKey:@"height"];
    [tableViewCell2Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
    [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell2Data];
    
    // ----------------------------;
    // UILabel -> label2;
    // ----------------------------;
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 72, 49)];
    [tableViewCell2CustomView addSubview:label2];
    label2.alpha = 1.0;
    label2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
    label2.text = @"URL";
    label2.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    label2.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    label2.textAlignment = UITextAlignmentLeft;
    label2.shadowOffset = CGSizeMake(0, -1);
    label2.font = [UIFont fontWithName:@"Helvetica-Bold" size:17.0];
    
    
    // ----------------------------;
    // UITextField -> textField2;
    // ----------------------------;
    
    textField2 = [[UITextField alloc] initWithFrame:CGRectMake(82, 0, 218, 49)];
    [tableViewCell2CustomView addSubview:textField2];
    textField2.alpha = 1.0;
    textField2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
    textField2.text = _data.url;
    textField2.borderStyle = UITextBorderStyleNone;
    textField2.textAlignment = UITextAlignmentCenter;
    textField2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField2.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    textField2.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    textField2.clearButtonMode = UITextFieldViewModeAlways;
    textField2.font = [UIFont fontWithName:@"Helvetica" size:17.0];
    
    tableViewCell2CustomView.frame = tableViewCell2.contentView.bounds;
    [tableViewCell2.contentView addSubview:tableViewCell2CustomView];
    
    // ----------------------------;
    // Cell -> tableViewCell3;
    // ----------------------------;
    
    NSMutableDictionary *tableViewCell3Data = [NSMutableDictionary dictionary];
    tableViewCell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    tableViewCell3.textLabel.text = @"Monitoring interval";
    tableViewCell3.tag = _data.interval;
    tableViewCell3.detailTextLabel.text = [NSString stringWithFormat:@"%d min", _data.interval];
    tableViewCell3.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    [tableViewCell3Data setObject:tableViewCell3 forKey:@"cell"];
    [tableViewCell3Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
    [tableViewCell3Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
    [tableViewCell3Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
    [tableViewCell3Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
    [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell3Data];
    [tableViewCell3Data setObject:@"didTap_tableViewCell3:" forKey:@"actionSelector"];
    
    // ----------------------------;
    // Cell -> tableViewCell4;
    // ----------------------------;
    
    NSMutableDictionary *tableViewCell4Data = [NSMutableDictionary dictionary];
    tableViewCell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    tableViewCell4.textLabel.text = @"Server type";
    tableViewCell4.detailTextLabel.text = [checkerDataManager serverTypeToString:_data.serverTyp];
    tableViewCell4.tag = _data.serverTyp;
    tableViewCell4.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    [tableViewCell4Data setObject:tableViewCell4 forKey:@"cell"];
    [tableViewCell4Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
    [tableViewCell4Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
    [tableViewCell4Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
    [tableViewCell4Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
    [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell4Data];
    [tableViewCell4Data setObject:@"didTap_tableViewCell4:" forKey:@"actionSelector"];
    
    // ----------------------------;
    // Cell -> tableViewCell5;
    // ----------------------------;
    
    NSMutableDictionary *tableViewCell5Data = [NSMutableDictionary dictionary];
    tableViewCell5 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil] ;
    tableViewCell5.textLabel.text = @"Format";
    tableViewCell5.tag = _data.formatTyp;
    tableViewCell5.detailTextLabel.text = [checkerDataManager formatTypToString:_data.formatTyp];
    tableViewCell5.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    [tableViewCell5Data setObject:tableViewCell5 forKey:@"cell"];
    [tableViewCell5Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
    [tableViewCell5Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
    [tableViewCell5Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
    [tableViewCell5Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
    [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell5Data];
    [tableViewCell5Data setObject:@"didTap_tableViewCell5:" forKey:@"actionSelector"];
    
    // ----------------------------;
    // UIWebView -> webView1;
    // ----------------------------;
    
    UIView *webView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 410, 320, 50)];
    [webView1 addSubview:[checkerAppDelegate getBanner]];
    [contentView addSubview:webView1];
    
    
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
    
    tableViewCell3.tag = _data.interval;
    tableViewCell3.detailTextLabel.text = [NSString stringWithFormat:@"%d min", _data.interval];
    
    tableViewCell4.detailTextLabel.text = [checkerDataManager serverTypeToString:_data.serverTyp];
    tableViewCell4.tag = _data.serverTyp;
   
    tableViewCell5.tag = _data.formatTyp;
    tableViewCell5.detailTextLabel.text = [checkerDataManager formatTypToString:_data.formatTyp];

    [tableView1 reloadData];
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
    
    return [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] ;
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
                return 32;
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
                return 32;
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
// Navigation Bar
// ----------------

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
    [self didTap_barButton1:nil forEvent:nil];
    return NO;
}

// ----------------
// Action
// ----------------

- (void)didTap_barButton1:(id)sender forEvent:(UIEvent *)event {
    checkerAppDelegate *d = [[UIApplication sharedApplication] delegate];
    checkerDataManager *data = d.data;  
    
    data.name = textField1.text;
    data.url = textField2.text;
    
    data.interval = tableViewCell3.tag;
    data.serverTyp = tableViewCell4.tag;
    data.formatTyp = tableViewCell5.tag;
    
    [data startStreamScaner];
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didTap_tableViewCell3:(UIView *)cell {
    SetIntervalViewController *controller = [[SetIntervalViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
    
}
- (void)didTap_tableViewCell4:(UIView *)cell {
    ServerTypeViewController *controller = [[ServerTypeViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
    
}
- (void)didTap_tableViewCell5:(UIView *)cell {
    FormatViewController *controller = [[FormatViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [tableView1 adjustOffsetToIdealIfNeeded];
}

@end