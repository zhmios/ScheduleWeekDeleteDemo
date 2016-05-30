//
//  ViewController.m
//  TestDemo
//
//  Created by zhm on 16/5/25.
//  Copyright © 2016年 zhm. All rights reserved.
//

#import "ViewController.h"
static NSString * const kKuaiShouAppGroupsID = @"group.com.comon.kuaishou";

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

//    [self newMethord];
}


- (IBAction)btnPress:(id)sender {
    [self newMethord];
    
    
//    NSCalendar *currentCalendar = [NSCalendar autoupdatingCurrentCalendar];
//    NSDate *nowDate = [NSDate date];
//    NSDateComponents *dateComponents = [[NSDateComponents alloc]init];
//    NSCalendarUnit unit = kCFCalendarUnitYear | kCFCalendarUnitMonth | kCFCalendarUnitDay |  kCFCalendarUnitWeekday | kCFCalendarUnitWeekOfMonth | kCFCalendarUnitWeekOfYear;
//    dateComponents = [currentCalendar components:unit fromDate:nowDate];
//    
//    NSInteger year = [dateComponents year];
//    NSInteger month = [dateComponents month];
//    NSInteger day = [dateComponents day];
//    NSInteger weekday = [dateComponents weekday];
//    NSInteger weekIndex = [dateComponents weekOfMonth];
//    NSInteger weekYear = [dateComponents weekOfYear];
//    
//    NSString *showText = [NSString stringWithFormat:@"现在是%ld年%ld月%ld号 第%ld周 星期%ld 全年第%ld周",year,month,day,weekIndex,weekday,weekYear];
//    
//    NSLog(@"%@",showText);
//    
//    NSUserDefaults *userDefault = [[NSUserDefaults alloc] initWithSuiteName:kKuaiShouAppGroupsID];
//    
//    NSNumber *deleteyear = [userDefault objectForKey:@"RankDeleteYear"];
//    NSNumber *deleteMonth = [userDefault objectForKey:@"RankDeleteMonth"];
//    NSNumber *deleteWeekIndex = [userDefault objectForKey:@"RankDeleteWeekIndex"];
//    NSNumber *deleteWeekday = [userDefault objectForKey:@"RankDeleteWeekday"];
//    NSNumber *deleteDay = [userDefault objectForKey:@"RankDeleteDay"];
//    NSNumber *deleteWeekYear = [userDefault objectForKey:@"RankDeleteWeekYear"];
//     NSString *string = [NSString stringWithFormat:@"删除日期：%@年%@月%@日 第%@周 星期%@",deleteyear,deleteMonth,deleteDay,deleteWeekIndex,deleteWeekday];
//    NSLog(@"%@",string);
//    if (deleteyear == nil) {
//        //存入此时时间作为删除时间，不做任何其他操作
//        
//        [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
//        [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
//        [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
//        [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
//        [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
//        [userDefault setObject:[NSNumber numberWithInteger:weekYear] forKey:@"RankDeleteWeekYear"];
//        [userDefault synchronize];
//      ;
//        NSLog(@"不删除");
//        
//    }else{
//        
//        //防止同一周内重复删除
//        if (deleteyear.integerValue != year || deleteMonth.integerValue != month) {
//            
//            if (ABS(month - deleteMonth.integerValue) == 1 && (ABS(weekYear - deleteWeekYear.integerValue) == 0||ABS(weekYear - deleteWeekYear.integerValue) == 1)) {
//                
//                
//                if ((weekday != 1 && deleteWeekday.integerValue != 1)) {
//                    
//                    NSLog(@"不删除");
//                }else if (weekday == 1 && weekYear > deleteWeekYear.integerValue && deleteDay.integerValue != 1){
//                    
//                    NSLog(@"不删除");
//                }else if (deleteWeekday.integerValue == 1 && deleteWeekYear.integerValue > weekYear && weekday != 1){
//                    
//                    NSLog(@"不删除");
//                    
//                }else{
//                    
//                    [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
//                    [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
//                    [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekYear] forKey:@"RankDeleteWeekYear"];
//                    [userDefault synchronize];
//                    NSLog(@"删除");
//                    
//                }
//                
//            }else if (ABS(weekYear - deleteyear.integerValue) == 1){
//                
//                if (deleteMonth.integerValue == 12 && month == 1) {
//                    if (deleteDay.integerValue == 31 && weekday == 1&& weekIndex == 1) {
//                        NSLog(@"不删除");
//                        
//                    }else if(deleteDay.integerValue == 29 && ((weekIndex == 1 && (weekday >=6 && weekday <=7))||(weekIndex == 2 && weekday ==1))){
//                        NSLog(@"不删除");
//                        
//                    }else if (deleteDay.integerValue == 30 &&((weekday == 7 && weekIndex == 1)||( weekday == 1 && weekIndex == 2))){
//                        
//                        NSLog(@"不删除");
//                    }else if (deleteDay.integerValue == 28 && ((weekIndex == 1 && (weekday >=5 && weekday <=7))||(weekIndex == 2 && weekday ==1))){
//                        
//                        NSLog(@"不删除");
//                    }else if (deleteDay.integerValue == 27 && ((weekIndex == 1 && (weekday >=4 && weekday <=7))||(weekIndex == 2 && weekday ==1))){
//                        
//                        NSLog(@"不删除");
//                    }else if (deleteDay.integerValue == 26 && ((weekIndex == 1 && (weekday >=3 && weekday <=7))||(weekIndex == 2 && weekday ==1))){
//                        
//                        NSLog(@"不删除");
//                    }else{
//                        [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
//                        [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
//                        [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
//                        [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
//                        [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
//                        [userDefault setObject:[NSNumber numberWithInteger:weekYear] forKey:@"RankDeleteWeekYear"];
//                        [userDefault synchronize];
//                        NSLog(@"删除");
//                    }
//                    
//                    
//                }else{
//                    [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
//                    [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
//                    [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekYear] forKey:@"RankDeleteWeekYear"];
//                    [userDefault synchronize];
//                    NSLog(@"删除");
//                    
//                }
//                
//            }else{
//                
//                [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
//                [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
//                [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
//                [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
//                [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
//                [userDefault setObject:[NSNumber numberWithInteger:weekYear] forKey:@"RankDeleteWeekYear"];
//                [userDefault synchronize];
//             
//                NSLog(@"删除");
//                
//            }
//        }else{
//            
//            if (weekIndex == deleteWeekIndex.integerValue) {
//                
//                if ((deleteWeekday.integerValue == 1 && deleteWeekday.integerValue != weekday)||(weekday == 1 && deleteWeekday.integerValue == 2)) {
//                    
//                    [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
//                    [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
//                    [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekYear] forKey:@"RankDeleteWeekYear"];
//                    [userDefault synchronize];
//                
//                    NSLog(@"删除");
//                    
//                }else{
//                    
//                 
//                    NSLog(@"不删除");
//                    
//                }
//                
//            }else{
//                
//                if ((weekIndex == 1 + deleteWeekIndex.integerValue) && weekday == 1 && deleteWeekday.integerValue != 1) {
//                    
//           
//                    NSLog(@"不删除");
//                    
//                }else if ((weekIndex ==  deleteWeekIndex.integerValue -1) && deleteWeekday.integerValue == 1 && weekday != 1){
//                    
//                   
//                    NSLog(@"不删除");
//                    
//                } else{
//                    
//                    [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
//                    [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
//                    [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
//                    [userDefault setObject:[NSNumber numberWithInteger:weekYear] forKey:@"RankDeleteWeekYear"];
//                    [userDefault synchronize];
//              
//                    NSLog(@"删除");
//                }
//                
//            }
//            
//            
//        }
//    }
    
}


//schedule
- (void)scheduleDeletePeriod{
    
    NSCalendar *currentCalendar = [NSCalendar autoupdatingCurrentCalendar];
    NSDate *nowDate = [NSDate date];
    NSDateComponents *dateComponents = [[NSDateComponents alloc]init];
    NSCalendarUnit unit = kCFCalendarUnitYear | kCFCalendarUnitMonth | kCFCalendarUnitDay | kCFCalendarUnitHour | kCFCalendarUnitMinute | kCFCalendarUnitSecond | kCFCalendarUnitWeekday | kCFCalendarUnitWeekOfMonth;
    dateComponents = [currentCalendar components:unit fromDate:nowDate];
    
    NSInteger year = [dateComponents year];
    NSInteger month = [dateComponents month];
    NSInteger day = [dateComponents day];
    NSInteger weekday = [dateComponents weekday];
    NSInteger hour = [dateComponents hour];
    NSInteger minute = [dateComponents minute];
    NSInteger second = [dateComponents second];
    NSInteger weekIndex = [dateComponents weekOfMonth];
    
    NSString *showText = [NSString stringWithFormat:@"现在是%ld年%ld月%ld号 第%ld周 星期%ld  %ld时%ld分%ld秒",year,month,day,weekIndex,weekday,hour,minute,second];
    
    NSLog(@"%@",showText);
    
    NSUserDefaults *userDefault = [[NSUserDefaults alloc] initWithSuiteName:kKuaiShouAppGroupsID];
    
    NSNumber *deleteyear = [userDefault objectForKey:@"RankDeleteYear"];
    NSNumber *deleteMonth = [userDefault objectForKey:@"RankDeleteMonth"];
    NSNumber *deleteWeekIndex = [userDefault objectForKey:@"RankDeleteWeekIndex"];
    NSNumber *deleteWeekday = [userDefault objectForKey:@"RankDeleteWeekday"];
    NSNumber *deleteDay = [userDefault objectForKey:@"RankDeleteDay"];
    
    if (deleteyear == nil) {
        //存入此时时间作为删除时间，不做任何其他操作
        
        [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
        [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
        [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
        [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
        [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
        [userDefault synchronize];
        NSString *string = [NSString stringWithFormat:@"删除日期：%@年%@月%@日 第%@周 星期%@",deleteyear,deleteMonth,deleteDay,deleteWeekIndex,deleteWeekday];
        NSLog(@"%@",string);
        NSLog(@"不删除");
        
    }else{
        
        //防止同一周内重复删除
        if (deleteyear.integerValue != year | deleteMonth.integerValue != month) {
            
            [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
            [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
            [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
            [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
            [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
            [userDefault synchronize];
            NSString *string = [NSString stringWithFormat:@"删除日期：%@年%@月%@日 第%@周 星期%@",deleteyear,deleteMonth,deleteDay,deleteWeekIndex,deleteWeekday];
            NSLog(@"%@",string);
            NSLog(@"删除");
        }else{
            
            if (weekIndex == deleteWeekIndex.integerValue) {
                
                if ((deleteWeekday.integerValue == 1 && deleteWeekday.integerValue != weekday)||(weekday == 1 && deleteWeekday.integerValue == 2)) {
                    
                    [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
                    [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
                    [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
                    [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
                    [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
                    [userDefault synchronize];
                    NSString *string = [NSString stringWithFormat:@"删除日期：%@年%@月%@日 第%@周 星期%@",deleteyear,deleteMonth,deleteDay,deleteWeekIndex,deleteWeekday];
                    NSLog(@"%@",string);
                    NSLog(@"删除");
                    
                }else{
                    
                    NSString *string = [NSString stringWithFormat:@"删除日期：%@年%@月%@日 第%@周 星期%@",deleteyear,deleteMonth,deleteDay,deleteWeekIndex,deleteWeekday];
                    NSLog(@"%@",string);
                    NSLog(@"不删除");
                    
                }
                
            }else{
                
                if ((weekIndex == 1 + deleteWeekIndex.integerValue) && weekday == 1 && deleteWeekday.integerValue != 1) {
                    
                    NSString *string = [NSString stringWithFormat:@"删除日期：%@年%@月%@日 第%@周 星期%@",deleteyear,deleteMonth,deleteDay,deleteWeekIndex,deleteWeekday];
                    NSLog(@"%@",string);
                    NSLog(@"不删除");
                    
                }else if ((weekIndex ==  deleteWeekIndex.integerValue -1) && deleteWeekday.integerValue == 1 && weekday != 1){
                    
                    NSString *string = [NSString stringWithFormat:@"删除日期：%@年%@月%@日 第%@周 星期%@",deleteyear,deleteMonth,deleteDay,deleteWeekIndex,deleteWeekday];
                    NSLog(@"%@",string);
                    NSLog(@"不删除");
                    
                } else{
                    
                    [userDefault setObject:[NSNumber numberWithInteger:year] forKey:@"RankDeleteYear"];
                    [userDefault setObject:[NSNumber numberWithInteger:month] forKey:@"RankDeleteMonth"];
                    [userDefault setObject:[NSNumber numberWithInteger:weekIndex] forKey:@"RankDeleteWeekIndex"];
                    [userDefault setObject:[NSNumber numberWithInteger:weekday] forKey:@"RankDeleteWeekday"];
                    [userDefault setObject:[NSNumber numberWithInteger:day] forKey:@"RankDeleteDay"];
                    [userDefault synchronize];
                    NSString *string = [NSString stringWithFormat:@"删除日期：%@年%@月%@日 第%@周 星期%@",deleteyear,deleteMonth,deleteDay,deleteWeekIndex,deleteWeekday];
                    NSLog(@"%@",string);
                }
                
            }
            
            
        }
    }
    
}



//新  完成
- (void)newMethord{

    NSCalendar *currentCalendar = [NSCalendar autoupdatingCurrentCalendar];
    NSDate *nowDate = [NSDate date];
    NSDateComponents *dateComponents = [[NSDateComponents alloc]init];
    NSCalendarUnit unit = kCFCalendarUnitYear | kCFCalendarUnitMonth | kCFCalendarUnitDay | kCFCalendarUnitHour | kCFCalendarUnitMinute | kCFCalendarUnitSecond | kCFCalendarUnitWeekday | kCFCalendarUnitWeekOfMonth;
    dateComponents = [currentCalendar components:unit fromDate:nowDate];
    
    NSInteger year = [dateComponents year];
    NSInteger month = [dateComponents month];
    NSInteger day = [dateComponents day];
    NSInteger weekday = [dateComponents weekday];
    NSInteger hour = [dateComponents hour];
    NSInteger minute = [dateComponents minute];
    NSInteger second = [dateComponents second];
    NSInteger weekIndex = [dateComponents weekOfMonth];
    
    NSString *showText = [NSString stringWithFormat:@"现在是%ld年%ld月%ld号 第%ld周 星期%ld  %ld时%ld分%ld秒",year,month,day,weekIndex,weekday - 1,hour,minute,second];
    
    NSLog(@"%@",showText);
    
    NSUserDefaults *userDefault = [[NSUserDefaults alloc] initWithSuiteName:kKuaiShouAppGroupsID];
    
    NSNumber *deleteSeconds = [userDefault objectForKey:@"RankDeleteSeconds"];
    if (deleteSeconds == nil) {
        
        NSLog(@"不删除");
        [userDefault setObject:[NSNumber numberWithDouble:nowDate.timeIntervalSince1970] forKey:@"RankDeleteSeconds"];
        [userDefault setObject:showText forKey:@"showText"];
        [userDefault synchronize];
        
    }else{
        
        NSDate *deleteDate = [NSDate dateWithTimeIntervalSince1970:deleteSeconds.doubleValue];
        [self showDateInformationWithDate:deleteDate];
        NSInteger newWeekday = 1;
        if (weekday == 1) {
            
            newWeekday = 7;
            
        }else{
        
        
            newWeekday = weekday - 1;
        }
        
        NSInteger daySecond = [self fetchCurrentSecondsWithHour:hour minute:minute second:second];
        NSInteger weekSecond = (newWeekday - 1) * 24 * 3600;
        NSInteger total = daySecond + weekSecond;
        
        NSInteger real = nowDate.timeIntervalSince1970 - deleteSeconds.integerValue;
        
        if (real >= 0) {
          
            if (real <= total) {
                
                NSLog(@"不删除");
                NSLog(@"上次删除时间:%@",[userDefault objectForKey:@"showText"]);
            }else{
                NSLog(@"上次删除时间:%@",[userDefault objectForKey:@"showText"]);
                [userDefault setObject:[NSNumber numberWithDouble:nowDate.timeIntervalSince1970] forKey:@"RankDeleteSeconds"];
                [userDefault setObject:showText forKey:@"showText"];
                
                [userDefault synchronize];

                NSLog(@"删除");
            }

            
        }else{

            NSInteger leftSeconds = (8 - newWeekday) * 3600 * 24 - daySecond;
            
            if (- real <= leftSeconds) {
                NSLog(@"上次删除时间:%@",[userDefault objectForKey:@"showText"]);
                NSLog(@"不删除");
                
            }else{
            
                NSLog(@"上次删除时间:%@",[userDefault objectForKey:@"showText"]);
                [userDefault setObject:[NSNumber numberWithDouble:nowDate.timeIntervalSince1970] forKey:@"RankDeleteSeconds"];
                [userDefault setObject:showText forKey:@"showText"];
                [userDefault synchronize];

                NSLog(@"删除");
                
            }
        
        }
        
    }
}

- (NSInteger)fetchCurrentSecondsWithHour:(NSInteger) hour minute:(NSInteger)minute second:(NSInteger)second{


    return hour * 3600 + minute * 60 + second;


}

//展现date的信息
- (void)showDateInformationWithDate:(NSDate *)dateDetial{
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH-MM-SS"];
    NSString *timeString = [dateFormatter stringFromDate:dateDetial];
//    NSLog(@"删除的时间:%@",timeString);
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
