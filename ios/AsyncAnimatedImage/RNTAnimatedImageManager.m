#import <React/RCTViewManager.h>
#import "AsyncAnimatedImage.h"

@interface RNTAnimatedImageManager : RCTViewManager
@end

@implementation RNTAnimatedImageManager

RCT_EXPORT_MODULE(RNTAnimatedImage)

- (UIView *)view {
  AsyncAnimatedImage *view = [[AsyncAnimatedImage alloc] init];
  view.backgroundColor = [UIColor lightGrayColor];
  return view;
}

RCT_EXPORT_VIEW_PROPERTY(uri, NSString);

@end
