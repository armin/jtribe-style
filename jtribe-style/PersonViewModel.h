//
//  StyleViewModel.h
//  jtribe-style
//
//  Created by Armin Kroll on 9/04/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

// STRUCTURE: use view modelsto deal with data for the UI. See also jtribe refrence model and MVVM http://www.objc.io/issue-13/mvvm.html
@interface PersonViewModel : NSObject

@property (nonatomic, strong) NSString *firstNameString;
@property (nonatomic, strong) NSString *lastNameString;
@property (nonatomic, strong) NSString *genderString;

// STRUCTURE: view model gets initialised with a model
- (instancetype) initWithPerson:(Person*)person;

@end
