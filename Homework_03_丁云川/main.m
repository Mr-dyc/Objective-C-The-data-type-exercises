//
//  main.m
//  Homework_03_丁云川
//
//  Created by rimi on 16/1/27.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
/*
 1、将字符串中的数字去掉，字母转为大写：@“0go08o32d”
 2、写一个方法，计算任意一个身份证号对应的出生年月
 3、写一个方法，将传入的NSString类型的字符串数值变为相反数字符串后返回，如传入@“1”，返回@“-1”。传入@“-12”，返回“12”；
 
 4、给定一个字符串，判断字符串中是否还有png，有就删除它
 5、给你一个字符串  helloworld 在hello后插入my
 6、写一个方法输入的字符是否包含数字0，不包含输出@“false”，包含输出其所在位置（多个输出第一个）；
 */

#import <Foundation/Foundation.h>
#import "Birthday.h"
#import "OppositeString.h"
#import "Zero.h"

#define NUMBER 6
int main(int argc, const char * argv[]) {
    @autoreleasepool {
#if NUMBER == 1
#pragma mark - 1、将字符串中的数字去掉，字母转为大写：@“0go08o32d”
//         //1.1
//        NSString *string = @"0go08o32d";
////        NSMutableString *mstr = [NSMutableString stringWithCapacity:0];
////        for (int i = 0; i < string.length; i++) {
////            char a = [string characterAtIndex: i];
////            if (a >= 'a' && a <= 'z') {
////                [mstr appendFormat:@"%c", a];
////            }
////        }
//        NSLog(@"%@",[mstr uppercaseString]);
        //1.2
        NSMutableString *string = [[NSMutableString alloc] initWithFormat:@"0go08o32d"];
        for (int i = 0; i < string.length; i ++) {
            char character = [string characterAtIndex:i];
            if (character >= '0' && character <= '9') {
                [string deleteCharactersInRange:NSMakeRange(i, 1)];
                i --;
            }
        }
        NSLog(@"string = %@",string);
//        NSString *newString = [string uppercaseString];
//        NSLog(@"newString = %@", newString);
        [string setString:[string uppercaseString]];//转换
        NSLog(@"string2 = %@",string);
        
#elif NUMBER == 2
#pragma mark -  2、写一个方法，计算任意一个身份证号对应的出生年月
        /*
        NSString *IDNumber = [[NSString alloc] initWithFormat:@"511023199511143879"];
        NSString *dateOfBirth = [IDNumber substringWithRange:NSMakeRange(6, 8)];
        NSLog(@"这个身份证号对应的出身年月是%@", dateOfBirth);
        NSString *year = [IDNumber substringWithRange:NSMakeRange(6, 4)];
        NSString *month = [IDNumber substringWithRange:NSMakeRange(10, 2)];
        NSString *day = [IDNumber substringWithRange:NSMakeRange(12, 2)];
        NSLog(@"丁云川的出身日期是%@年%@月%@日", year, month,day);
        */
        
        Birthday *birthday = [[Birthday alloc] init];
        NSString *birth = [birthday birthdayOfSomeOneCode:@"511023199511143879"];
        NSLog(@"birth = %@",birth);
        
#elif NUMBER == 3
#pragma mark - 3、写一个方法，将传入的NSString类型的字符串数值变为相反数字符串后返回，如传入@“1”，返回@“-1”。传入@“-12”，返回“12”；
//        NSMutableString *string = [NSMutableString stringWithFormat:@"2134"];
//        NSInteger s = [string integerValue];
//        s = -s;
//        NSString *reverse = [NSString stringWithFormat:@"%ld",s];
//        NSLog(@"%@",reverse);
        OppositeString *string = [[OppositeString alloc]init];
        NSString *oppositeString = [string oppositeNumber:@"-2134"];
        NSLog(@"%@",oppositeString);
        
#elif NUMBER == 4
#pragma mark - 4、给定一个字符串，判断字符串中是否还有png，有就删除它
        
        
        NSMutableString *mutablesString = [[NSMutableString alloc] initWithFormat:@"12345png67890"];
        NSRange range = [mutablesString rangeOfString:@"png"];
                if (range.location != NSNotFound && range.length > 0){
                    [mutablesString deleteCharactersInRange:NSMakeRange(range.location,range.length)];
                }
        NSLog(@"mutableString = %@", mutablesString);
        
#elif NUMBER == 5
#pragma mark - 5、给你一个字符串  helloworld 在hello后插入my
        
        NSMutableString *mutablesString = [[NSMutableString alloc] initWithFormat:@"hello  world"];
        [mutablesString insertString:@"my" atIndex:6];
        NSLog(@"mutableString = %@", mutablesString);
        
#elif NUMBER == 6
#pragma mark - 6、写一个方法输入的字符是否包含数字0，不包含输出@“false”，包含输出其所在位置（多个输出第一个）；
        
//        NSMutableString *mutablesString = [[NSMutableString alloc] initWithFormat:@"123450png67890"];
//        NSRange range = [mutablesString rangeOfString:@"0"];
//        if (range.location != NSNotFound && range.length > 0){
//            NSLog(@"%ld", range.location + 1);
//        }else NSLog(@"false");
//        
        NSString *string = @"123450png67890";
        [Zero zeroOfString:string];
        
#endif
    }
    return 0;
}
