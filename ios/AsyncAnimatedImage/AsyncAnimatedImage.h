#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AsyncDisplayKit/AsyncDisplayKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AsyncAnimatedImage : UIView

@property (nonatomic, strong) NSString *uri;
@property (nonatomic, strong) ASDisplayNode *imageNode;

@end

NS_ASSUME_NONNULL_END
