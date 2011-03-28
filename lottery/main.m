//
//  main.m
//  lottery
//
//  Created by Nicholas Cancelliere on 3/27/11.
//  Copyright 2011 Ozmox.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // create the date object
    NSCalendarDate *now = [[NSCalendarDate alloc] init];
    
    // seed random number generator
    srandom(time(NULL));
    NSMutableArray *array;
    array = [[NSMutableArray alloc] init];
    
    int i;
    for (i = 0; i < 10; i++) {

        // Create a date/time object that is 'i' weeks from now
        NSCalendarDate *iWeeksFromNow;
        iWeeksFromNow = [now dateByAddingYears:0
                                        months:0 
                                          days:(i * 7)
                                         hours:0 
                                       minutes:0
                                       seconds:0];
        
        // Create a new instance of LotteryEntry
        LotteryEntry *newEntry = [[LotteryEntry alloc] init];
        [newEntry setEntryDate:iWeeksFromNow];
        
        // Add entry to array
        [array addObject:newEntry];
        
    }
    
    for (LotteryEntry *entryToPrint in array) {
        NSLog(@"%@", entryToPrint);
    }

    [pool drain];
    return 0;
}

