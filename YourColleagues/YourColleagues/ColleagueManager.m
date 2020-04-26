//
//  ColleagueManager.m
//  YourColleagues
//
//  Created by Abd-Elmalek on 3/6/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ColleagueManager.h"
#import "Fiend.h"
@implementation ColleagueManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _lisOfFriendsMales = [[NSMutableArray alloc] init];
        _lisOfFriendsFemales = [[NSMutableArray alloc] init];
        Fiend *f1 = [Fiend new];
        Fiend *f2 = [Fiend new];
        Fiend *f3 = [Fiend new];
        Fiend *f4 = [Fiend new];
        
        Fiend *f5 = [Fiend new];
        Fiend *f6 = [Fiend new];
        Fiend *f7 = [Fiend new];
        Fiend *f8 = [Fiend new];
      
        f1.age = 17;
        f1.name = @"Ahmed";
        f1.mId = 0;
        f1.phone = 10254;
        f1.email = @"ahmed@gamil.com";
        
        f2.age = 22;
        f2.name = @"Ashraf";
        f2.mId = 1;
        f2.phone = 10888;
        f2.email = @"ahsraf@gamil.com";
        
        f3.age = 18;
        f3.name = @"Ibrahim";
        f3.mId = 2;
        f3.phone = 10254;
        f3.email = @"ibrahim@gamil.com";
        
        f4.age = 19;
        f4.name = @"Yehya";
        f4.mId = 3;
        f4.phone = 10254;
        f4.email = @"yehya@gamil.com";
        [_lisOfFriendsMales addObject:f1];
        [_lisOfFriendsMales addObject:f2];
        [_lisOfFriendsMales addObject:f3];
        [_lisOfFriendsMales addObject:f4];
        
        
        f5.age = 17;
        f5.name = @"Esraa";
        f5.mId = 0;
        f5.phone = 10254;
        f5.email = @"esraa@gamil.com";
        
        f6.age = 22;
        f6.name = @"Omnia";
        f6.mId = 1;
        f6.phone = 10888;
        f6.email = @"omnia@gamil.com";
        
        f7.age = 18;
        f7.name = @"Eman";
        f7.mId = 2;
        f7.phone = 10254;
        f7.email = @"eman@gamil.com";
        
        f8.age = 19;
        f8.name = @"Ghadeer";
        f8.mId = 3;
        f8.phone = 10254;
        f8.email = @"ghadeer@gamil.com";
        [_lisOfFriendsFemales addObject:f5];
        [_lisOfFriendsFemales addObject:f6];
        [_lisOfFriendsFemales addObject:f7];
        [_lisOfFriendsFemales addObject:f8];
    }
    return self;
}
- (void)addFriend:(Fiend *)friend{
    
    [_lisOfFriendsMales addObject:friend];
    
}
- (void)deleteFriend:(int)friendId{
    [_lisOfFriendsMales removeObjectAtIndex:friendId];
}
- (NSMutableArray *)getAllFriends{
    return _lisOfFriendsMales;
}
- (NSMutableArray *)getAllFriendsFemales{
    return _lisOfFriendsFemales;
}

@end
