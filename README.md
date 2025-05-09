# ofxSparkle

OpenFrameworks addon that adds the [Sparkle framework](https://sparkle-project.org/) to the project, which allows for automatic app updates.

Only for Macos.

This is just a thin C++ wrapper for the Sparkle.framework.

## Important
Remember to generate the project with project generator.

If you use Xcode, it will automatically add the Sparle framework to the app bundle.

If you want to use Make, VSCode, etc, you need to copy the Sparkle.framework into the app bundle. 

Then just follow the Sparkle guidelines. 

Remember to add the necesary info to the openFrameworks-Info.plist file.

## Extras
If you add [ofxMainMenu](https://github.com/roymacdonald/ofxMainMenu) to your project, it will automatically add a "Check for updates" menu item in the app's main menu.