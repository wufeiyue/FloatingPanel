//
//  Copyright © 2019 Shin Yamamoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FloatingPanelPosition.h"

NS_ASSUME_NONNULL_BEGIN

@protocol FloatingPanelLayout
@required
@property (nonatomic, retain, readonly) FloatingPanelPosition initialPosition;
@property (nonatomic, retain, readonly) NSSet<FloatingPanelPosition> * supportedPositions;
@property (nonatomic, assign, readonly) CGFloat topInteractionBuffer;
@property (nonatomic, assign, readonly) CGFloat bottomInteractionBuffer;
- (NSNumber * _Nullable)insetForPosition:(FloatingPanelPosition _Nonnull)position NS_SWIFT_NAME(insetFor(position:));
- (NSArray<NSLayoutConstraint *> *)prepareLayoutWithSurfaceView: (UIView *)surfaceView
                                                         inView:(UIView *)view NS_SWIFT_NAME(prepareLayout(surfaceView:in:));
- (CGFloat)backdropAlphaForPosition:(FloatingPanelPosition _Nonnull)potision NS_SWIFT_NAME(backdropAlphaFor(position:));
@end

NS_ASSUME_NONNULL_END
