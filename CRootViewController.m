#import "CRootViewController.h"

@interface AuthenticationViewController ()
@property (nonatomic, strong) UIImageView *logoImageView;
@property (nonatomic, strong) UITextField *usernameField;
@property (nonatomic, strong) UITextField *passwordField;
@property (nonatomic, strong) UIButton *loginButton;
@end

@implementation AuthenticationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // CashApp logo
    self.logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cashapp_logo"]];
    self.logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.logoImageView.frame = CGRectMake(50, 100, 200, 100);
    [self.view addSubview:self.logoImageView];
    
    // Username field
    self.usernameField = [[UITextField alloc] initWithFrame:CGRectMake(50, 250, 300, 40)];
    self.usernameField.placeholder = @"Username";
    self.usernameField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.usernameField];
    
    // Password field
    self.passwordField = [[UITextField alloc] initWithFrame:CGRectMake(50, 310, 300, 40)];
    self.passwordField.placeholder = @"Password";
    self.passwordField.secureTextEntry = YES;
    self.passwordField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.passwordField];
    
    // Login button
    self.loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.loginButton.frame = CGRectMake(50, 370, 300, 40);
    [self.loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [self.loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.loginButton.backgroundColor = [UIColor colorWithRed:0.20 green:0.60 blue:0.86 alpha:1.0]; // CashApp blue
    self.loginButton.layer.cornerRadius = 10.0;
    [self.loginButton addTarget:self action:@selector(loginButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.loginButton];
}

- (void)loginButtonTapped:(id)sender {
    // Handle login logic here
}

@end
