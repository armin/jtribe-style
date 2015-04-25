//
//  Person.h
//  jtribe-style
//
//  Created by Armin Kroll on 9/04/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

#import <Foundation/Foundation.h>

// STYLE: enums should start with k then the Name of the type. kPersonGender...
typedef enum
{
  kPersonGenderMale,
  kPersonGenderFemale,
  kPersonGenderUnspecified
}
PersonGender;

// STYLE: models are named simple. Person is the model for a person. No need to use JTRPerson.
@interface Person : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
// STYLE: scalars and enum types don't need memory management.
@property PersonGender gender;

// STRUCTURE: use a designated initialiser. When initialising a model object you MUST use the designated initialiser. You must not use  p = [[Person alloc] init]; p.firstName = @"blah";
- (instancetype) initWithFirstName:(NSString*)firstName
                          lastName:(NSString*)lastName
                            gender:(PersonGender)gender;

@end
