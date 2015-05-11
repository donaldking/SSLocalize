//
//  SSLocalize.h
//  IGTurboTrader
//
//  Created by Donald King on 05/05/2015.
//  Copyright (c) 2015 SecureSwift Europe. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SSLocalizationSetLanguage(language) [[SSLocalize sharedLocal] setLanguage:(language)]
#define SSLocalizedString(key) [[SSLocalize sharedLocal] localizedStringForKey:(key)]

@interface SSLocalize : NSObject

//------------------------------------------------------------------------------
// MARK: - Factory
//------------------------------------------------------------------------------

+ (SSLocalize *)sharedLocal;


//------------------------------------------------------------------------------
// MARK: - Translation
//------------------------------------------------------------------------------

- (NSString *)localizedStringForKey:(NSString *)key;


//------------------------------------------------------------------------------
// MARK: - Language selection
//------------------------------------------------------------------------------

- (void)setLanguage:(NSString *)language;

@end
