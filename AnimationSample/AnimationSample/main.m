//
//  main.m
//  AnimationSample
//
//  Created by rps on 26/12/22.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "SampleClass.h"
int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
    
    
}
