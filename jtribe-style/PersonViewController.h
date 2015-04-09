//
//  ViewController.h
//  jtribe-style
//
//  Created by Armin Kroll on 9/04/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StyleDelegate.h"
#import "PersonViewModel.h"

@interface PersonViewController : UIViewController

// STYLE: delegates MUST be weak
@property (nonatomic, weak) id<StyleDelegate> delegate;

// STRUCTURE: view controllers MUST have at least one setup method. Setup methods are useful for storyboard apps. In prepareForSegue the destintion view controller  must be setup. Do not configure a destintion view controller via properties as this makes tracabilty of variations impossible (you will understand once yu have dealt with a very complex app)
// STRUCTURE: use setup method to pass in a view model
- (void) setupWithStyleViewModel:(PersonViewModel*)viewModel;


@end

