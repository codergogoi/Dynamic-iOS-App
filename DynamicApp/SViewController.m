//
//  SViewController.m
//  DynamicApp
//
//  Created by Jayanta Gogoi on 22/08/16.
//  Copyright © 2016 Jayanta Gogoi. All rights reserved.
//

#import "SViewController.h"

@interface SViewController ()

@end

@implementation SViewController

@synthesize firstName;

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width- 40, self.view.frame.size.height)];
    [lbl setLineBreakMode:NSLineBreakByWordWrapping];
    [lbl setNumberOfLines:0];
    [lbl setTextAlignment:NSTextAlignmentCenter];
    [lbl setTextColor:[UIColor redColor]];
    [lbl setText:[NSString stringWithFormat:@"Hi %@ , From First View",self.firstName]];
    [self.view addSubview:lbl];
    [self.view setBackgroundColor:[UIColor greenColor]];
    
    
    
    NSLog(@"Second View");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
