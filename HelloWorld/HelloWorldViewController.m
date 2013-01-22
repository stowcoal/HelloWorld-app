//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by CURTIS STOCHL on 1/17/13.
//  Copyright (c) 2013 CURTIS STOCHL. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UITextField *textName;
- (IBAction)changeGreeting:(UIButton *)sender;
- (IBAction)changeGreetingOnLeave:(UITextField *)sender;



@end

@implementation HelloWorldViewController
@synthesize userName = _userName;

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



- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    
    if (theTextField == self.textName) {
        
        [theTextField resignFirstResponder];
        
    }
    
    return YES;
    
}


- (IBAction)changeGreeting:(UIButton *)sender {
    self.userName = self.textName.text;
    
    
    
    NSString *nameString = self.userName;
    
    if ([nameString length] == 0) {
        
        nameString = @"World";
        
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    
    self.labelName.text = greeting;
}

- (IBAction)changeGreetingOnLeave:(UITextField *)sender {
    self.userName = self.textName.text;
    
    
    
    NSString *nameString = self.userName;
    
    if ([nameString length] == 0) {
        
        nameString = @"World";
        
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    
    self.labelName.text = greeting;
}
@end
