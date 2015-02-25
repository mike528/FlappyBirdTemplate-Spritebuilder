//
//  MainScene.h
//  PROJECTNAME
//
//  Created by Benjamin Encz on 10/10/13.
//  Copyright (c) 2014 MakeGamesWithUs inc. Free to use for all purposes.
//

#import "CCNode.h"
#import "GamePlayScene.h"

@interface MainScene : GamePlayScene

-(void) gameOver;

@end

@interface CGPointObject : NSObject
{
    CGPoint _ratio;
    CGPoint _offset;
    CCNode *__unsafe_unretained _child;     // weak ref
}

@property (nonatomic, readwrite) CGPoint ratio;
@property (nonatomic, readwrite) CGPoint offset;
@property (nonatomic, readwrite, unsafe_unretained) CCNode *child;
+(id) pointWithCGPoint: (CGPoint) point offset: (CGPoint) offset;
-(id) initWithCGPoint: (CGPoint) point offset: (CGPoint) offset;

@end