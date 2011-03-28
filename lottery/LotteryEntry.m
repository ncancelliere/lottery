//
//  LotteryEntry.m
//  lottery
//
//  Created by Nicholas Cancelliere on 3/27/11.
//  Copyright 2011 Ozmox.com. All rights reserved.
//

#import "LotteryEntry.h"


@implementation LotteryEntry

- (void)prepareRandomNumbers
{
    firstNumber  = random() % 100 + 1;
    secondNumber = random() % 100 + 1;
}

- (void)setEntryDate:(NSCalendarDate *)date
{
    entryDate = date;
}

- (NSCalendarDate *)entryDate 
{
    return entryDate;
}

- (int)firstNumber 
{
    return firstNumber;
}

- (int)secondNumber
{
    return secondNumber;
}

@end
