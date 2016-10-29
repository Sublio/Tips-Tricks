//
//  DMUtils.h
//  TricksTest
//
//  Created by sublio on 29/10/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


#define APP_SHORT_NAME @"TRICKS";
#define PRODUCTION_BUILD
#define LOGS_ENABLED 1


NSString* fancyDateStringFromDate(NSDate* date);

BOOL iPad();
BOOL iPhone();


typedef enum {
    DMProgrammerTypeJunior,
    DMProgrammerTypeMid,
    DMProgrammerTypeSenior
} DMProgrammerType;


NSString* NSStringFromDMProgrammerType(DMProgrammerType type);

void  DMLog(NSString* format, ...);