# SSLocalize
This works only for iOS! - Obviously!
Custom in app language localisation. You don't need to use NSLocalizedString(foo, bar) but SSLocalizedString(foo). 

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

These are pretty self explanatory. All you have to do is add this class to your project, create Localizable.string for different languages you want your app to support, set the language you want your app to use (based on different app logic which you set) and Bam! you are good to go!. Note:  This is not using system wide language selection from settings! You can have different in app language regardless of what the system language is set as. Should if you have any questions!
