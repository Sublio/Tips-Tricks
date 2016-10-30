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
    
    [[NSNotificationCenter defaultCenter] addObserverForName:DMLogNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *notif) {
        self.consoleView.text=[NSString stringWithFormat:@"%@\n%@", self.consoleView.text,[notif.userInfo objectForKey:DMLogNotificationTextUserInfoKey]];
    }];
}


- (void) dealloc {
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    
}


-(IBAction)actionTest:(id)sender{
    
    
    DMLog(@"action Test");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
