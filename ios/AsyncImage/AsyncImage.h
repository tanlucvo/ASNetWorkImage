#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AsyncDisplayKit/AsyncDisplayKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AsyncImage : UIView

@property (nonatomic, strong) NSString *uri;
@property (nonatomic, strong) ASNetworkImageNode *imageNode;

@end

NS_ASSUME_NONNULL_END
