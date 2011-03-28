//
//  LotteryEntry.h
//  lottery
//
//  Created by Nicholas Cancelliere on 3/27/11.
//  Copyright 2011 Ozmox.com. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LotteryEntry : NSObject {
    NSCalendarDate *entryDate;
    int firstNumber;
    int secondNumber;
}
- (void)prepareRandomNumbers;
- (void)setEntryDate:(NSCalendarDate *)date;
- (NSCalendarDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;

@end
