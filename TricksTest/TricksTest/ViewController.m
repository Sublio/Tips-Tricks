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
    
    
#ifdef PRODUCTION_BUILD
    
    
    
    
#endif
    
    DMLog(@"%@",fancyDateStringFromDate([NSDate date]));
    
    if (iPad()){
        
        DMLog(@"iPad");
        
    }else {
        
        DMLog(@"iPhone");
    }
    
    //NSLog(@"%@",NSStringFromDMProgrammerType(DMProgrammerTypeMid));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
