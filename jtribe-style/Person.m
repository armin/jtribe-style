//
//  Person.m
//  jtribe-style
//
//  Created by Armin Kroll on 9/04/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

#import "Person.h"


@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                           gender:(PersonGender)gender
{
  self = [super init];
  if (self) {
    self.firstName = firstName;
    self.lastName = lastName;
    self.gender = gender;
    // STYLE: Why don't we use _firstName = firstName; There is some disucssion that using self. in the initialiser could lead to unexpected behaviour. In the past 8 year I have not experienced that ever. Using _firstName however relies on a convention that synthesized properties have always an underlying ivar that starts with '_'. That is an assumption and should not be relied on. So, please use self. EVERYWHERE when you deal with properties - even in the initaliser.
  }
  return self;
}

#pragma mark - Convenience Methods

// STYLE: name methods like this <return_object>With<first_argument>
+ (Person*) personWithFirstName:(NSString *)firstName
               lastName:(NSString*)lastName
               gender:(PersonGender)gender
{
  // STYLE: use multi-line argument formatting when more than 2 arguments.
  return [[Person alloc] initWithFirstName:firstName
                                  lastName:lastName
                                    gender:gender];
}

// STYLE: by now you may guess that this is a really bad method name. Really bad!
+ (Person*) getPerson:(NSString*)name andLastName:(NSString*)name2 plusGender:(int)aGender
{
  return nil;
}

// STYLE: BAD STYLE. Did you know that you can name methods like this (please don't do that ever, though)
+ (id) get:(id)a :(id)b :(id)c
{
  // STYLE: I have seen that sort of code in the wild.
  return [Person get:@"1" :@{@"k":@1} :@[@1, @2]];
}


#pragma mark - Internal Methods

// here are some samples of good and bad styles (not relevant to models, just general notes) 
// STYLE: Don't use prepositions like "to" or "from"
- (void) addPerson:(NSString *)person
          toFamily:(NSString *)family
{
  // STYLE: not nice
}

// STYLE: DO this instead
- (void) addPerson:(NSString *)person
            family:(NSString *)family
{
// STYLE: This is still not a good method name. The method name suggest that a person object is added but it is adding a string. Don't.
}

// STYLE: Even better
- (void) addPersonWithFirstName:(NSString *)firstName
            familyName:(NSString *)familyName
{
  // STYLE: Ahm that's nice.
}



@end
