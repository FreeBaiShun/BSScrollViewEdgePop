//
//  UIScrollView+BSScrollViewEdgePop.h
//  ScrollTest
//
//  Created by BaiShun. on 2018/11/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (BSScrollViewEdgePop)
@property (strong, nonatomic) UIPanGestureRecognizer *panGr;

- (void)setEdgePop:(UIViewController *)vc;
@end

NS_ASSUME_NONNULL_END
