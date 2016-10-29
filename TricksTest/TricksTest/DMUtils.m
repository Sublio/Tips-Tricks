//
//  DMUtils.m
//  TricksTest
//
//  Created by sublio on 29/10/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import "DMUtils.h"




NSString* fancyDateStringFromDate(NSDate* date){
    
    
    
    static NSDateFormatter* formatter = nil;
    
    if(!formatter){
        
        
        formatter = [[NSDateFormatter alloc]init];
        [formatter setDateFormat:@"-- dd: MM : yy --"];
    }
    
    return [formatter stringFromDate:date];
}


BOOL iPad(){
    
    return ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
}
BOOL iPhone(){
    
    return ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
    
}