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
#define LOGS_NOTIFICATIONS_ENABLED 0


NSString* fancyDateStringFromDate(NSDate* date);

BOOL iPad();
BOOL iPhone();


extern NSString * const DMLogNotification;
extern NSString * const DMLogNotificationTextUserInfoKey;

typedef enum {
    DMProgrammerTypeJunior,
    DMProgrammerTypeMid,
    DMProgrammerTypeSenior
} DMProgrammerType;


NSString* NSStringFromDMProgrammerType(DMProgrammerType type);

void  DMLog(NSString* format, ...);