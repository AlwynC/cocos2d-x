//
//  InitialViewController.h
//  MyGame
//
//  Created by Alwyn Savio Concessao on 31/05/16.
//
//

#import <UIKit/UIKit.h>

@interface InitialViewController : UIViewController<UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UILabel *initialLabel;
@property (retain, nonatomic) IBOutlet UITextField *initialTextField;
@property (retain, nonatomic) IBOutlet UIButton *pressMEButton;
@property (retain, nonatomic) IBOutlet UIButton *loadGameSceneButton;
- (IBAction)pressMEButtonAction:(id)sender;
- (IBAction)loadGameSceneButtonPressed:(id)sender;

@end
