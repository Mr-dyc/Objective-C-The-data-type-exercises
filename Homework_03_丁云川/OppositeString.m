//
//  OppositeString.m
//  Homework_03_丁云川
//
//  Created by rimi on 16/1/27.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import "OppositeString.h"

@implementation OppositeString
- (NSString *)oppositeNumber:(NSString *)string
{
int number = [string intValue];
int oppositeNumber = -1 * number;
NSString *oppositeString = [NSString stringWithFormat:@"%d",oppositeNumber];
//格式转换
return oppositeString;
}
@end
