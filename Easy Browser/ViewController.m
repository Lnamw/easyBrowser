//
//  ViewController.m
//  Easy Browser
//
//  Created by Elena Maso Willen on 10/05/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self.textField resignFirstResponder];
    
    NSString *url = self.textField.text;
    
    NSURLRequest *request = [NSURLRequest requestWithURL: [NSURL URLWithString:url]];
    
    [self.webView loadRequest:request];

    return YES;
    
}



//- (IBAction)openPage:(id)sender {
//    
////    NSURL *url = [NSURL URLWithString:@"http://developer.apple.com"];
////    [[UIApplication sharedApplication] openURL: url];
//
//    
//    NSURLRequest *request = [NSURLRequest requestWithURL: [NSURL URLWithString:@"https://apple.com"]];
//    
//    [self.webView loadRequest:request];
//
//}





@end
