#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void) initialize
{
    // your code here
    character = (Character *) [CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    
}

-(void) update: (CCTime) delta
{
    // put update code here

    // this will be run every frame
    // delta is the time that has elapsed since the last time it was run. This is usually 1/60, but can be bigger if the game slows down
    
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta;         // delta is approximately 1/60th of a second
    
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        [self addObstacle];             // Add a new obstacle
        
        timeSinceObstacle = 0.0f;       // Then reset the timer
    }
    
    
}

// put new methods here

-(void) touchBegan: (CCTouch *) touch withEvent: (CCTouchEvent *) event {
    
    // this will get called every time the player touches the screen
    [character flap];
    
}

@end
