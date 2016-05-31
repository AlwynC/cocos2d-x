#import <UIKit/UIKit.h>

#import "InitialViewController.h"

@interface AppController : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property(nonatomic, readonly) InitialViewController* viewController;

@end

