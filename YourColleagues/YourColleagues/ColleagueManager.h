//
//  ColleagueManager.h
//  YourColleagues
//
//  Created by Abd-Elmalek on 3/6/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fiend.h"
NS_ASSUME_NONNULL_BEGIN

@interface ColleagueManager : NSObject
@property NSMutableArray* lisOfFriendsMales;
@property NSMutableArray* lisOfFriendsFemales;
-(void) addFriend:(Fiend*) friend;
-(void) deleteFriend: (int) friendId;
-(NSMutableArray*) getAllFriends;
-(NSMutableArray*) getAllFriendsFemales;

@end

NS_ASSUME_NONNULL_END
