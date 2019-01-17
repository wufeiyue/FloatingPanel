//
//  Copyright © 2019 Shin Yamamoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FloatingPanelPosition.h"

NS_ASSUME_NONNULL_BEGIN

@class FloatingPanelController;

@protocol FloatingPanelBehavior
- (CGFloat)redirectionalProgress:(FloatingPanelController *)fpc
                    fromPosition:(FloatingPanelPosition)fromPosition
                      toPosition:(FloatingPanelPosition)toPosition NS_SWIFT_NAME(redirectionalProgress(_:from:to:));
- (UIViewPropertyAnimator *)interactionAnimator:(FloatingPanelController *)fpc
                                     toPosition:(FloatingPanelPosition)toPosition
                                   withVelocity:(CGVector)velocity NS_SWIFT_NAME(interactionAnimator(_:to:with:));

- (UIViewPropertyAnimator *)addAnimator:(FloatingPanelController *)fpc
                             toPosition:(FloatingPanelPosition)toPosition NS_SWIFT_NAME(addAnimator(_:to:));;
- (UIViewPropertyAnimator *)removeAnimator:(FloatingPanelController *)fpc
                              fromPosition:(FloatingPanelPosition)fromPosition NS_SWIFT_NAME(removeAnimator(_:from:));
- (UIViewPropertyAnimator *)moveAnimator:(FloatingPanelController *)fpc
                            fromPosition:(FloatingPanelPosition)fromPosition
                              toPosition:(FloatingPanelPosition)toPosition NS_SWIFT_NAME(moveAnimator(_:from:to:));

@property (nonatomic, assign, readonly) CGFloat removalVelocity;
@property (nonatomic, assign, readonly) CGFloat removalProgress;
- (UIViewPropertyAnimator *)removalInteractionAnimator:(FloatingPanelController *)fpc
                                          withVelocity:(CGVector)velocity NS_SWIFT_NAME(removalInteractionAnimator(_:with:));
@end

NS_ASSUME_NONNULL_END
