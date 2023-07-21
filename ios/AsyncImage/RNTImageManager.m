// RNTMapManager.m

#import <React/RCTViewManager.h>
#import "AsyncImage.h"

@interface RNTImageManager : RCTViewManager
@end

@implementation RNTImageManager

RCT_EXPORT_MODULE(RNTImage)

- (UIView *)view {
  AsyncImage *view = [[AsyncImage alloc] init];
  view.backgroundColor = [UIColor lightGrayColor];
  return view;
}

RCT_EXPORT_VIEW_PROPERTY(uri, NSString);

@end
