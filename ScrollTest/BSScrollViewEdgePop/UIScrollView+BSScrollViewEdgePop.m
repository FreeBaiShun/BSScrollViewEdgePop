//
//  UIScrollView+BSScrollViewEdgePop.m
//  ScrollTest
//
//  Created by BaiShun on 2018/11/15.
//

#import "UIScrollView+BSScrollViewEdgePop.h"
#import <objc/runtime.h>
#define BSEdgePopIPHONE_H [UIScreen mainScreen].bounds.size.height
#define BSEdgePopIPHONE_W [UIScreen mainScreen].bounds.size.width
static UIPanGestureRecognizer *pan;

@implementation UIScrollView (BSScrollViewEdgePop)

- (void)setPanGr:(UIPanGestureRecognizer *)panGr{
    objc_setAssociatedObject(self, &pan, panGr,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIPanGestureRecognizer *)panGr{
    return objc_getAssociatedObject(self, &pan);
}

- (void)setEdgePop:(UIViewController *)vc{
    id target = vc.navigationController.interactivePopGestureRecognizer.delegate;
    self.panGr = [[UIPanGestureRecognizer alloc] initWithTarget:target action:NSSelectorFromString(@"handleNavigationTransition:")];
    [[UIApplication sharedApplication].keyWindow addGestureRecognizer:self.panGr];
}

- (BOOL)panBack:(UIGestureRecognizer *)gestureRecognizer {
    
    int location_X =0.15*BSEdgePopIPHONE_W;
    
    if (gestureRecognizer ==self.panGestureRecognizer) {
        UIPanGestureRecognizer *pan = (UIPanGestureRecognizer *)gestureRecognizer;
        CGPoint point = [pan translationInView:self];
        UIGestureRecognizerState state = gestureRecognizer.state;
        if (UIGestureRecognizerStateBegan == state ||UIGestureRecognizerStatePossible == state) {
            CGPoint location = [gestureRecognizer locationInView:self];
            
            int temp1 = location.x;
            int temp2 = BSEdgePopIPHONE_W;
            NSInteger XX = temp1 % temp2;
            if (point.x >0 && XX < location_X) {
                return YES;
            }
        }
    }
    return NO;
    
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    
    if ([self panBack:gestureRecognizer]) {
        return NO;
    }
    return YES;
}

- (void)dealloc{
    [[UIApplication sharedApplication].keyWindow removeGestureRecognizer:self.panGr];
}
@end
