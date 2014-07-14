//
//  ViewController.m
//  HelloWorld
//
//  Created by JON PAUL BERTI on 7/14/14.
//  Copyright (c) 2014 jpberti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
- (IBAction)submitButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _inputField.clearButtonMode = UITextFieldViewModeWhileEditing;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitButton:(id)sender {
    
    [self.view endEditing:YES];
 
    NSString *name = _inputField.text;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome!"
                                                    message:[NSString stringWithFormat:@"Hello %@", name]
                                                   delegate:nil
                                          cancelButtonTitle:@"THANKS!"
                                          otherButtonTitles:nil];
    [alert show];
}
@end
