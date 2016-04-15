//
//  HomeTabBarController.m
//  CoorperationWithStoryBoard
//
//  Created by 陈舒澳 on 16/4/15.
//  Copyright © 2016年 xingbida. All rights reserved.
//

#import "HomeTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface HomeTabBarController ()

@end

@implementation HomeTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIStoryboard * firstSB = [UIStoryboard storyboardWithName:@"First" bundle:nil];
    FirstViewController * first = [firstSB instantiateInitialViewController];
    first.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"fu" image:[UIImage imageNamed:@"available"] selectedImage:[UIImage imageNamed:@"available-hl"]];
    
    UIStoryboard * seondSB = [UIStoryboard storyboardWithName:@"Second" bundle:nil];
    SecondViewController * second = [seondSB instantiateInitialViewController];
    second.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"zong" image:[UIImage imageNamed:@"going"] selectedImage:[UIImage imageNamed:@"going-hl"]];
    
    UIStoryboard * thirdSB = [UIStoryboard storyboardWithName:@"Third" bundle:nil];
    ThirdViewController * third = [thirdSB instantiateInitialViewController];
    third.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"jian" image:[UIImage imageNamed:@"history"] selectedImage:[UIImage imageNamed:@"history-hl"]];
    self.viewControllers = @[first,second,third];
    
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
