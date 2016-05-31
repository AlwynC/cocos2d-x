//
//  InitialViewController.m
//  MyGame
//
//  Created by Alwyn Savio Concessao on 31/05/16.
//
//

#import "InitialViewController.h"
#import "RootViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.initialTextField.delegate=self;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    
    [textField becomeFirstResponder];
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    
    [textField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return true;
}
- (IBAction)pressMEButtonAction:(id)sender {
    
    UIAlertView *alert;
    if([self.initialTextField.text isEqualToString:@""]){
        
        alert = [[UIAlertView alloc]initWithTitle:@"Hello!" message:@"You have not entered any text in the text field!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
    }else{
        
        alert = [[UIAlertView alloc]initWithTitle:@"Hey!" message:[NSString stringWithFormat:@"You have entered the text %@ in the text field.",self.initialTextField.text] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    }
    [alert show];
}

- (IBAction)loadGameSceneButtonPressed:(id)sender {
    
    if([self.initialTextField isFirstResponder])
        [self.initialTextField resignFirstResponder];
        
    RootViewController *gameView = [[RootViewController alloc]init];
    
    [self presentViewController:gameView animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    
    [super dealloc];
}
@end
