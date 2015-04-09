//
//  ViewController.m
//  jtribe-style
//
//  Created by Armin Kroll on 9/04/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

#import "PersonViewController.h"

@interface PersonViewController ()
// STRUCTURE: use a category for local properties. Avoid exposing properties in the header file if possible
// STYLE: use camelCase for variables/properties
@property (nonatomic, strong) PersonViewModel *viewModel;
@end

// STYLE: use long naming conventions. If it's a view controller then use ViewController. 
@implementation PersonViewController

// STRUCTURE: use designated setup method to set the view model in the view controller. See http://www.objc.io/issue-13/mvvm.html for details around MMVC
- (void) setupWithStyleViewModel:(PersonViewModel*)viewModel
{
  self.viewModel = viewModel;
}

@end
