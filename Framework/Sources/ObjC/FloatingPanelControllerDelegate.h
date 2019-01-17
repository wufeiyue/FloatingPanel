//
//  Copyright © 2019 Shin Yamamoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FloatingPanelPosition.h"

NS_ASSUME_NONNULL_BEGIN

@class FloatingPanelController;
@protocol FloatingPanelLayout;
@protocol FloatingPanelBehavior;

@protocol FloatingPanelControllerDelegate
@optional
- (id<FloatingPanelBehavior> _Nullable)floatingPanel:(FloatingPanelController * _Nonnull)vc behaviorFor:(UITraitCollection * _Nonnull)newCollection;
- (id<FloatingPanelLayout> _Nullable)floatingPanel:(FloatingPanelController * _Nonnull)vc layoutFor:(UITraitCollection * _Nonnull)newCollection;
- (BOOL)floatingPanel:(FloatingPanelController * _Nonnull)vc shouldRecognizeSimultaneouslyWith:(UIGestureRecognizer * _Nonnull)gestureRecognizer;
- (void)floatingPanelDidChangePosition:(FloatingPanelController * _Nonnull)vc;
- (void)floatingPanelDidEndDecelerating:(FloatingPanelController * _Nonnull)vc;
- (void)floatingPanelDidEndDragging:(FloatingPanelController * _Nonnull)vc withVelocity:(CGPoint)velocity targetPosition:(FloatingPanelPosition _Nonnull)targetPosition;
- (void)floatingPanelDidEndDraggingToRemove:(FloatingPanelController * _Nonnull)vc withVelocity:(CGPoint)velocity NS_SWIFT_NAME(floatingPanelDidEndDraggingToRemove(_:withVelocity:));
- (void)floatingPanelDidEndRemove:(FloatingPanelController * _Nonnull)vc;
- (void)floatingPanelDidMove:(FloatingPanelController * _Nonnull)vc;
- (void)floatingPanelWillBeginDecelerating:(FloatingPanelController * _Nonnull)vc;
- (void)floatingPanelWillBeginDragging:(FloatingPanelController * _Nonnull)vc;
@end

NS_ASSUME_NONNULL_END
