//
//  StyleDelegate.h
//  jtribe-style
//
//  Created by Armin Kroll on 9/04/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

@protocol StyleDelegate <NSObject>
// STYLE: delegates usually deal with lifecycle and therefore will use names liked: didFinish<DoingSomthing>, didSelect<Something>, etc
- (void) didFinish;
@end

