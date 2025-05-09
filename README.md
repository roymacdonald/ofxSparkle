# ofxSparkle

OpenFrameworks addon that adds the [Sparkle framework](https://sparkle-project.org/) to the project, which allows for automatic app updates.

Only for Macos.

This is just a thin C++ wrapper for the Sparkle.framework.

## Important
Remember to generate the project with project generator.

If you use Xcode, it will automatically add the Sparle framework to the app bundle.

If you want to use Make, VSCode, etc, you need to copy the Sparkle.framework into the app bundle. 

Then just follow the Sparkle guidelines. 

## Info.plist
In Sparkle's documentation it makes reference to the app's Info.plist file. In the case of your openFrameworks project it is the openFrameworks-Info.plist file.

They mention that you need to change the version numbers in order to make updating possible. This can be done in the Project.xcconfig file.
When they mention the :

* `CFBundleShortVersionString` it is `MARKETING_VERSION`
* `CFBundleVersion` it is `CURRENT_PROJECT_VERSION`

Remember to add the necesary info to the `SUPublicEDKey` and `SUFeedURL` fields to the .plist file!

## Extras
If you add [ofxMainMenu](https://github.com/roymacdonald/ofxMainMenu) to your project, it will automatically add a "Check for updates" menu item in the app's main menu.

## Bundle data
Probably it is a good idea to bundle your data folder inside the app's bundle, it will look cleaner to users and will allow you to update them too.

to achieve such you need to do 2 things:

* In your `main.cpp` file, immediately after `int main() {` add the following:

	```
    string newRoot = "../Resources/data/";
    ofEnableDataPath();
    ofSetDataPathRoot(newRoot);
	```
	Xcode will copy/update the data automatically.

* In your project's Project.xcconfig file uncomment the line that says : `OF_BUNDLE_DATA_FOLDER = 1`







