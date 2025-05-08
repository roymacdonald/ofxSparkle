#include "ofxSparkle.h"
#import <Sparkle/Sparkle.h>

static SPUStandardUpdaterController *controller = nil;




void ofxSparkle::init()
{
    @autoreleasepool {
        controller = [[SPUStandardUpdaterController alloc]
             initWithStartingUpdater:YES           // start immediately
                      updaterDelegate:nil
                  userDriverDelegate:nil];
    }

}

void ofxSparkle::check_update()
{
    @autoreleasepool { [controller checkForUpdates:nil]; }
}



