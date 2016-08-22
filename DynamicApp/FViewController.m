//
//  FViewController.m
//  DynamicApp
//
//  Created by Jayanta Gogoi on 22/08/16.
//  Copyright © 2016 Jayanta Gogoi. All rights reserved.
//

#import "FViewController.h"
#import "SViewController.h"

@interface FViewController ()


@property(nonatomic) UITextField *txtFirstName;

@end

@implementation FViewController

@synthesize txtFirstName;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"View Loaded with Frame Height: %f , Width: %f", self.view.frame.size.height,self.view.frame.size.width);

    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/2, self.view.frame.size.width, self.view.frame.size.height/3)];
    
    [bgView setBackgroundColor:[UIColor brownColor]];
    [bgView setCenter:self.view.center];
    [self.view addSubview:bgView];

    
    txtFirstName = [[UITextField alloc] initWithFrame:CGRectMake(0, 10, bgView.frame.size.width - 40, 40)];
    
    [txtFirstName setCenter:CGPointMake(bgView.center.x, txtFirstName.center.y)];
    [txtFirstName setPlaceholder:@"First Name"];
    [txtFirstName setFont:[UIFont systemFontOfSize:14]];
    [txtFirstName setTextColor:[UIColor darkGrayColor]];
    [txtFirstName setTextAlignment:NSTextAlignmentCenter];
    [txtFirstName setDelegate:self];
    [txtFirstName setBorderStyle:UITextBorderStyleRoundedRect];
    [bgView addSubview:txtFirstName];
    
    
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, txtFirstName.frame.size.height + 40, 200, 40)];
    [nextBtn setBackgroundColor:[UIColor blueColor]];
    [nextBtn setTintColor:[UIColor whiteColor]];
    nextBtn.layer.borderWidth = 2;
    nextBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    nextBtn.layer.cornerRadius = 10;
    [nextBtn setTitle:@"Next" forState:UIControlStateNormal];
    [nextBtn setCenter:CGPointMake(bgView.center.x, nextBtn.center.y)];
    [nextBtn addTarget:self action:@selector(onNextTap:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:nextBtn];
    
}

-(IBAction)onNextTap:(id)sender{
    
    
    SViewController *secondView = [[SViewController alloc] init];
    [secondView setFirstName:[NSString stringWithFormat:@"%@", self.txtFirstName.text]];
    
    [self presentViewController:secondView animated:YES completion:nil];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self.view endEditing:YES];
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

@end
