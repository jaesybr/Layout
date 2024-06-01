#import "CRootViewController.h"
#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@end

@implementation LoginViewController {
    UITextField *_emailTextField;
    UITextField *_passwordTextField;
    UIButton *_loginButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Login";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _emailTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 150, 300, 40)];
    _emailTextField.placeholder = @"Email";
    _emailTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_emailTextField];
    
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 300, 40)];
    _passwordTextField.placeholder = @"Password";
    _passwordTextField.secureTextEntry = YES;
    _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_passwordTextField];
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _loginButton.frame = CGRectMake(50, 250, 300, 40);
    [_loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [_loginButton addTarget:self action:@selector(loginButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginButton];
}

- (void)loginButtonTapped {
    NSString *email = _emailTextField.text;
    NSString *password = _passwordTextField.text;
    
    if (email.length > 0 && password.length > 0) {
        // Authentication successful
        // Navigate to the home screen (assuming HomeViewController exists)
        HomeViewController *homeVC = [[HomeViewController alloc] init];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:homeVC];
        [self presentViewController:navController animated:YES completion:nil];
    } else {
        // Authentication failed: Show an alert or handle the error
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error" message:@"Invalid email or password" preferredStyle:UIAlertControllerStyleAlert];
        [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alertController animated:YES completion:nil];
    }
}

@end

@implementation CRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Present the login view controller when the root view controller loads
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    [self presentViewController:loginVC animated:YES completion:nil];
}

@end
