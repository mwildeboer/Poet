# Poet

### Introduction

Poet is a builder for *NSAttributedString* and *NSDictionary* with text attributes. By default, you have to use a *NSDictionary* to create NSAttributedStrings. This is rather annoying because your app will crash if the a value is nil. Plus the formatter in Xcode messes up the format of the *NSDictionary* literal most of the time. Poet is more simple and more elegant.

### Installation

Preferred is installation via CocoaPods. Later I will add the project to the Cocoapods central repository. For now, add the following line to your Podfile:

	pod 'Poet', :git => 'https://github.com/mwildeboer/Poet.git'

### Example

Poet extends *NSDictionary*, *NSAttributedString* and *NSString* with a new construction method containing the builder callback block. So for example to create a *NSDictionary*.

    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithBuilder:^(NSTextAttributes *attributes) {
        attributes.font = [UIFont systemFontOfSize:16];
        attributes.foregroundColor = [UIColor whiteColor];
    }]];
    
Or a *NSAttributedString*.

    NSAttributedString *string = [[NSAttributedString alloc] initWithString:@"Hello World" builder:^(NSTextAttributes *attributes)
    {
        attributes.font = [UIFont systemFontOfSize:16];
        attributes.foregroundColor = [UIColor blueColor];
        attributes.paragraphStyle.alignment = NSTextAlignmentCenter;
        attributes.paragraphStyle.lineSpacing = 2.0;
    }];
    
The builder will revert to defaults if a value is not set.