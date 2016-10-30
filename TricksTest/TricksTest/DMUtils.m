//
//  DMUtils.m
//  TricksTest
//
//  Created by sublio on 29/10/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import "DMUtils.h"


NSString * const DMLogNotification=@"DMLogNotification";
NSString * const DMLogNotificationTextUserInfoKey=@"DMLogNotificationTextUserInfoKey";

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


NSString* NSStringFromDMProgrammerType(DMProgrammerType type){
    
    switch (type) {
        case DMProgrammerTypeJunior:return @"DMProgrammerTypeJunior";
        case DMProgrammerTypeMid:return @"DMProgrammerTypeMid";
        case DMProgrammerTypeSenior:return @"DMProgrammerTypeSenior";
            
        default:return nil;
    }
    
}


void  DMLog(NSString* format, ...){
    
#if LOGS_ENABLED
    va_list argumentList;
    va_start(argumentList,format);
    
    NSLogv(format, argumentList);
    

    NSString* log = [[NSString alloc]initWithFormat:format arguments:argumentList];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:DMLogNotification object:nil userInfo:@{DMLogNotificationTextUserInfoKey: log}];
    
    

    va_end(argumentList);
    
#endif
}