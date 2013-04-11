//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Ivan Fan on 4/3/13.
//  Copyright (c) 2013 Ivan Fan. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    self.username = self.textField.text;
    NSString *nameString = self.username;
    if ([nameString length] == 0) {
        nameString = @"World Ben wuz here";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@",nameString]; 
    self.label.text = greeting; 
    
}
@end
