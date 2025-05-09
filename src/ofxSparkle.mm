#include "ofxSparkle.h"
#import <Sparkle/Sparkle.h>

#ifdef HAS_OFX_MAIN_MENU
#include "ofxMainMenu.h"
#endif

static SPUStandardUpdaterController *controller = nil;




void ofxSparkle::init()
{
    @autoreleasepool {
        controller = [[SPUStandardUpdaterController alloc]
             initWithStartingUpdater:YES           // start immediately
                      updaterDelegate:nil
                  userDriverDelegate:nil];
    }
#ifdef HAS_OFX_MAIN_MENU
    
    ofxMainMenu::addAppMenuItem("Check for updates", "", [](){
        ofxSparkle::check_update();
    });
    //the following will add a separator to the main menu, before the "Quit" element
    ofxMainMenu::addSeparatorToAppMenu();

#endif
}

void ofxSparkle::check_update()
{
    @autoreleasepool { [controller checkForUpdates:nil]; }
}



