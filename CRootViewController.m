#import "CRootViewController.h"

@interface CRootViewController ()
@property (nonatomic, strong) NSMutableArray *objects;
@property (nonatomic, strong) UIView *modMenuView;
@end

@implementation CRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set up mod menu button
    UIBarButtonItem *modMenuButton = [[UIBarButtonItem alloc] initWithTitle:@" Trappps Mod Menu" style:UIBarButtonItemStylePlain target:self action:@selector(toggleModMenu)];
    self.navigationItem.rightBarButtonItem = modMenuButton;
    
    // Set up mod menu view
    CGFloat menuWidth = 200; // Adjust the width of the mod menu as needed
    CGFloat menuHeight = 150; // Adjust the height of the mod menu as needed
    self.modMenuView = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - menuWidth) / 2, (self.view.frame.size.height - menuHeight) / 2, menuWidth, menuHeight)];
    self.modMenuView.backgroundColor = [UIColor whiteColor]; // Adjust the background color as needed
    self.modMenuView.layer.cornerRadius = 10; // Adjust the corner radius as needed
    self.modMenuView.hidden = YES; // Hide the mod menu initially
    [self.view addSubview:self.modMenuView];
    
    // Add mod menu buttons
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button1 setTitle:@"Speed" forState:UIControlStateNormal];
    button1.frame = CGRectMake(20, 20, 160, 40); // Adjust button position and size as needed
    [button1 addTarget:self action:@selector(option1ButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.modMenuView addSubview:button1];
    
    // Add more buttons as needed...
}

- (void)toggleModMenu {
    self.modMenuView.hidden = !self.modMenuView.hidden; // Toggle the visibility of the mod menu
}

- (void)option1ButtonTapped {
    // Handle option 1 button tap
}

// Implement methods for other mod menu buttons as needed

@end
