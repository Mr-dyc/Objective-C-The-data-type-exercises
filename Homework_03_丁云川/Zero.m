//
//  Zero.m
//  Homework_03_丁云川
//
//  Created by rimi on 16/1/27.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import "Zero.h"

@implementation Zero
+ (void)zeroOfString:(NSString*)string;{
    NSRange range = [string rangeOfString:@"0"];
    if (range.location!=NSNotFound&&range.length>0) {
        NSLog(@"Location:%ld",range.location);
    } else {
        NSLog(@"False");
    }
}

@end
