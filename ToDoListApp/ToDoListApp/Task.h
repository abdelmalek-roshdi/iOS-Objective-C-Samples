//
//  Task.h
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Task : NSObject
@property NSString *todoName;
@property NSString *desc;
@property NSString *priority;
@property NSString *inprogress;
@property NSString *done;
@property NSDate *creationDate;
@property NSDate *completionDate;
@property double id;

@end

NS_ASSUME_NONNULL_END
