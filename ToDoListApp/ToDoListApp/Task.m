//
//  Task.m
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "Task.h"

@implementation Task
- (instancetype)init
{
    self = [super init];
    if (self) {
        _inprogress = @"false";
        _done = @"false";
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder*)aCoder{
    [aCoder encodeObject:_todoName forKey:@"name"];
    [aCoder encodeObject:_desc forKey:@"desc"];
    [aCoder encodeObject:_priority forKey:@"priority"];
    [aCoder encodeObject:_inprogress forKey:@"inprogress"];
    [aCoder encodeObject:_done forKey:@"done"];
    [aCoder encodeObject:_creationDate forKey:@"creationDate"];
    [aCoder encodeObject:_completionDate forKey:@"completionDate"];
    [aCoder encodeDouble:_id forKey:@"id"];
}
-(instancetype)initWithCoder:(NSCoder*)aDecoder{
    _todoName = [aDecoder decodeObjectForKey:@"name"];
    _desc = [aDecoder decodeObjectForKey:@"desc"];
    _priority = [aDecoder decodeObjectForKey:@"priority"];
    _inprogress = [aDecoder decodeObjectForKey:@"inprogress"];
    _done = [aDecoder decodeObjectForKey:@"done"];
    _creationDate = [aDecoder decodeObjectForKey:@"creationDate"];
    _completionDate = [aDecoder decodeObjectForKey:@"completionDate"];
    _id = [aDecoder decodeDoubleForKey:@"id"];
    return self;
}
@end
