//
//  ContactViewController.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "ContactViewController.h"

@implementation ContactViewController


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // ----------------------------;
  // View Controller Root View;
  // ----------------------------;
  
  self.view.backgroundColor = [UIColor colorWithRed:0.82 green:0.82 blue:0.82 alpha:1.0];
  UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
  contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  
  // ----------------------------;
  // UILabel -> label1;
  // ----------------------------;
  
  UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(25, 63, 271, 35)];
  [contentView addSubview:label1];
  label1.alpha = 1.0;
  label1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label1.text = @"Developed by DigitalScope.cz";
  label1.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label1.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  label1.textAlignment = UITextAlignmentCenter;
  label1.shadowOffset = CGSizeMake(0, -1);
  label1.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:17.0];
  
  
  // ----------------------------;
  // UIButton -> imageButton1;
  // ----------------------------;
  
  UIButton *imageButton1 = [UIButton buttonWithType:UIButtonTypeCustom];
  imageButton1.frame = CGRectMake(83, 122, 213, 58);
  [contentView addSubview:imageButton1];
  imageButton1.alpha = 1.0;
  imageButton1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [imageButton1 setTitle:@"Logo digitalscope" forState:UIControlStateNormal];
  [imageButton1 setImage:[UIImage imageNamed:@"ContactViewController_Image_1.png"] forState:UIControlStateNormal];
  imageButton1.enabled = YES;
  [imageButton1 setTitleColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton2;
  // ----------------------------;
  
  UIButton *roundedRectButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton2.frame = CGRectMake(110, 369, 100, 50);
  [contentView addSubview:roundedRectButton2];
  roundedRectButton2.alpha = 1.0;
  roundedRectButton2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton2 setTitle:@"Close" forState:UIControlStateNormal];
  [roundedRectButton2 setTitleColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton2.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:15.0];
  [roundedRectButton2 addTarget:self action:@selector(didTap_roundedRectButton2:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton3;
  // ----------------------------;
  
  UIButton *roundedRectButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton3.frame = CGRectMake(83, 194, 155, 50);
  [contentView addSubview:roundedRectButton3];
  roundedRectButton3.alpha = 1.0;
  roundedRectButton3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton3 setTitle:@"Contact Us" forState:UIControlStateNormal];
  [roundedRectButton3 setTitleColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton3.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:15.0];
  
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];

}

- (void)viewDidUnload {
  [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:animated];
}

// ----------------
// Action
// ----------------

- (void)didTap_roundedRectButton2:(id)sender forEvent:(UIEvent *)event {
  [self dismissModalViewControllerAnimated:YES];
}




@end