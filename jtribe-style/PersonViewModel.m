//
//  StyleViewModel.m
//  jtribe-style
//
//  Created by Armin Kroll on 9/04/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

#import "PersonViewModel.h"

@implementation PersonViewModel


- (instancetype) initWithPerson:(Person*)person
{ // STYLE: If possible put { in a new line (Allman Style)
  self = [super init];
  
  if (self) {
    // convert form model to view model by calling a setup method
    [self _setupWithPerson:person];
  }
  
  return self;
}

// STYLE: use pragma marks to structure code. All internal methods should be behind the Internal Methods pragma mark.
#pragma mark - Internal Methods

// STYLE: internal methods start with underscore '_'
- (void) _setupWithPerson:(Person*)person
{
  self.firstNameString = person.firstName;
  self.lastNameString = person.lastName;
  switch (person.gender) {
    case kPersonGenderMale:
      self.genderString = @"Male";
      break;
    case kPersonGenderFemale:
      self.genderString = @"Female";
      break;
    case kPersonGenderUnspecified:
      self.genderString = @"Unspecified";
      break;
      
    default:
      self.genderString = @"Unknown";
      break;
  }
}


@end
