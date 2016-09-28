//
//  Birthday.m
//  Homework_03_丁云川
//
//  Created by rimi on 16/1/27.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import "Birthday.h"

@implementation Birthday

- (NSString *)birthdayOfSomeOneCode:(NSString *)code{
    
    NSString *birthday =  [code substringWithRange:NSMakeRange(6, 8)];
    return birthday;
    
}
@end
