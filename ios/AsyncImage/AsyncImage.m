#import "AsyncImage.h"

@implementation AsyncImage

- (instancetype)init {
    self = [super init];
    _imageNode = [[ASNetworkImageNode alloc] init];
    [self addSubnode:_imageNode];
    return self;
}

- (void)setUri:(NSString *)uri {
    _uri = uri;
    NSURL *url = [NSURL URLWithString:uri];
    _imageNode.URL = url;
    [self setNeedsDisplay];
}


- (void)layoutSubviews {
    CGRect originalRect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    _imageNode.frame = originalRect;
    [self setNeedsDisplay];
}

@end
