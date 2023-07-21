#import "AsyncAnimatedImage.h"
#import <SDWebImage/SDWebImage.h>

@implementation AsyncAnimatedImage

- (instancetype)init {
  self = [super init];
    _imageNode = [[ASDisplayNode alloc] initWithViewBlock:^UIView * _Nonnull{
        UIImageView *view = [[UIImageView alloc] init];
        view.contentMode = UIViewContentModeScaleAspectFill;
        view.backgroundColor = [UIColor grayColor];
        return view;
    }];

  [self addSubnode:_imageNode];
  return self;
}

- (void)setUri:(NSString *)uri {
    _uri = uri;
    NSURL *url = [NSURL URLWithString:uri];
    UIImageView *imageView = (UIImageView *)_imageNode.view;
    [imageView sd_setImageWithURL:url];
    [self setNeedsDisplay];
}


- (void)layoutSubviews {
    CGRect originalRect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    _imageNode.frame = originalRect;
    [self setNeedsDisplay];
}

@end
