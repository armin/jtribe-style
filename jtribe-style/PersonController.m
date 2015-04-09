//
//  StyleController.m
//  jtribe-style
//
//  Created by Armin Kroll on 9/04/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

#import "PersonController.h"

@interface PersonController ()
@property (nonatomic, strong) Person *person;
@end

@implementation PersonController

- (instancetype) initWithPerson:(Person*)person
{
  self = [super init];
  // STYLE: Objective-C uses YES and NO. Therefore true and false are incorrect. Also since nil resolves to NO it is unnecessary to compare it in conditions. No need to do if (self != nil)
  if (self) {
    self.person = person;
  }
  return self;
}

@end
