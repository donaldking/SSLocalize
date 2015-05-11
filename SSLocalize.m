//
//  SSLocalize.m
//  IGTurboTrader
//
//  Created by Donald King on 05/05/2015.
//  Copyright (c) 2015 SecureSwift Europe. All rights reserved.
//

#import "SSLocalize.h"

static SSLocalize *singleObject = nil;
static NSBundle *bundle = nil;

@implementation SSLocalize

//------------------------------------------------------------------------------
// MARK: - Singleton
//------------------------------------------------------------------------------

+ (SSLocalize *)sharedLocal
{
    if (singleObject == nil)
    {
        singleObject = [SSLocalize new];
    }
    return singleObject;
}


//------------------------------------------------------------------------------
// MARK: - Init
//------------------------------------------------------------------------------

- (id) init
{
    self = [super init];
    if (self)
    {
        bundle = [NSBundle mainBundle];
    }
    return self;
}


//------------------------------------------------------------------------------
// MARK: - Translation
//------------------------------------------------------------------------------

- (NSString *)localizedStringForKey:(NSString *)key
{
    return [bundle localizedStringForKey:key value:@"" table:nil];
}


//------------------------------------------------------------------------------
// MARK: - Language selection
//------------------------------------------------------------------------------

- (void)setLanguage:(NSString *)language
{
    NSString *path = [[NSBundle mainBundle] pathForResource:language ofType:@"lproj"];
    if (path == nil)
    {
        bundle = [NSBundle mainBundle];
    }
    else
    {
        bundle = [NSBundle bundleWithPath:path];
        
        if (bundle == nil)
        {
            bundle = [NSBundle mainBundle];
        }
    }
}

@end
