#import "CRootViewController.h"

@interface CRootViewController ()
@property (nonatomic, strong) NSMutableArray *objects;
@property (nonatomic, strong) UIView *modMenuView;
@end

@implementation CRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set up mod menu button
    UIBarButtonItem *modMenuButton = [[UIBarButtonItem alloc] initWithTitle:@"Mod Menu" style:UIBarButtonItemStylePlain target:self action:@selector(toggleModMenu)];
    self.navigationItem.rightBarButtonItem = modMenuButton;
    
    // Calculate mod menu size and position based on screen size
    CGFloat screenWidth = CGRectGetWidth([UIScreen mainScreen].bounds);
    CGFloat screenHeight = CGRectGetHeight([UIScreen mainScreen].bounds);
    CGFloat menuWidth = screenWidth * 0.8; // 80% of screen width
    CGFloat menuHeight = screenHeight * 0.6; // 60% of screen height
    CGFloat menuX = (screenWidth - menuWidth) / 2; // Center horizontally
    CGFloat menuY = (screenHeight - menuHeight) / 2; // Center vertically
    
    // Set up mod menu view
    self.modMenuView = [[UIView alloc] initWithFrame:CGRectMake(menuX, menuY, menuWidth, menuHeight)];
    self.modMenuView.backgroundColor = [UIColor whiteColor];
    self.modMenuView.layer.cornerRadius = 10;
    self.modMenuView.hidden = YES;
    [self.view addSubview:self.modMenuView];
    
    // Add mod menu buttons
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button1 setTitle:@"Option 1" forState:UIControlStateNormal];
    button1.frame = CGRectMake(20, 20, menuWidth - 40, 40); // Adjust button width
    [button1 addTarget:self action:@selector(option1ButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.modMenuView addSubview:button1];
    // Add more buttons as needed...
}

- (void)toggleModMenu {
    self.modMenuView.hidden = !self.modMenuView.hidden;
}

- (void)option1ButtonTapped {
    // Handle option 1 button tap
}

// Implement methods for other mod menu buttons as needed

@end
