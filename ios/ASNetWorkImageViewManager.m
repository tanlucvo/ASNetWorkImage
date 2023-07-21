#import <React/RCTViewManager.h>
#import <AsyncDisplayKit/AsyncDisplayKit.h>

@interface ASNetWorkImageViewManager : RCTViewManager
    @property (nonatomic, strong) ASNetworkImageNode *imageNode;
@end

@implementation ASNetWorkImageViewManager

RCT_EXPORT_MODULE(ASNetWorkImageView)

- (UIView *)view
{
    return  [[UIView alloc] init];
}

RCT_CUSTOM_VIEW_PROPERTY(color, NSString, UIView)
{
    NSLog(@"%@", json);
    ASNetworkImageNode *imageNode = [[ASNetworkImageNode alloc] init];
    imageNode.URL = [NSURL URLWithString:json];
    imageNode.frame = view.bounds;
    [view addSubnode:imageNode];

    
    NSLog(@"Change");
}

- (id) init {
    self = [super init];
    return self;
}

// Update the URL in a different function
- (void)updateImageURL:(NSString *)url{
    self.imageNode.URL = [NSURL URLWithString:url];
}

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

- hexStringToColor:(NSString *)stringToConvert
{
  NSString *noHashString = [stringToConvert stringByReplacingOccurrencesOfString:@"#" withString:@""];
  NSScanner *stringScanner = [NSScanner scannerWithString:noHashString];

  unsigned hex;
  if (![stringScanner scanHexInt:&hex]) return nil;
  int r = (hex >> 16) & 0xFF;
  int g = (hex >> 8) & 0xFF;
  int b = (hex) & 0xFF;

  return [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:1.0f];
}

@end
