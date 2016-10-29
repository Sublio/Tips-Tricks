//
//  ViewController.m
//  TricksTest
//
//  Created by sublio on 29/10/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import "ViewController.h"
#import "DMUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog (@"%@",fancyDateStringFromDate([NSDate date]));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
