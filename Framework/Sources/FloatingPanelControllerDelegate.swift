//
//  Created by Shin Yamamoto on 2019/01/05.
//  Copyright © 2019 Shin Yamamoto. All rights reserved.
//

import Foundation

#if !__OBJC__
public protocol FloatingPanelControllerDelegate: class {
    // if it returns nil, FloatingPanelController uses the default layout
    func floatingPanel(_ vc: FloatingPanelController, layoutFor newCollection: UITraitCollection) -> FloatingPanelLayout?

    // if it returns nil, FloatingPanelController uses the default behavior
    func floatingPanel(_ vc: FloatingPanelController, behaviorFor newCollection: UITraitCollection) -> FloatingPanelBehavior?

    func floatingPanelDidChangePosition(_ vc: FloatingPanelController) // changed the settled position in the model layer

    func floatingPanelDidMove(_ vc: FloatingPanelController) // any offset changes

    // called on start of dragging (may require some time and or distance to move)
    func floatingPanelWillBeginDragging(_ vc: FloatingPanelController)
    // called on finger up if the user dragged. velocity is in points/second.
    func floatingPanelDidEndDragging(_ vc: FloatingPanelController, withVelocity velocity: CGPoint, targetPosition: FloatingPanelPosition)
    func floatingPanelWillBeginDecelerating(_ vc: FloatingPanelController) // called on finger up as we are moving
    func floatingPanelDidEndDecelerating(_ vc: FloatingPanelController) // called when scroll view grinds to a halt

    // called on start of dragging to remove its views from a parent view controller
    func floatingPanelDidEndDraggingToRemove(_ vc: FloatingPanelController, withVelocity velocity: CGPoint)
    // called when its views are removed from a parent view controller
    func floatingPanelDidEndRemove(_ vc: FloatingPanelController)

    func floatingPanel(_ vc: FloatingPanelController, shouldRecognizeSimultaneouslyWith gestureRecognizer: UIGestureRecognizer) -> Bool
}

public extension FloatingPanelControllerDelegate {
    func floatingPanel(_ vc: FloatingPanelController, layoutFor newCollection: UITraitCollection) -> FloatingPanelLayout? {
        return nil
    }
    func floatingPanel(_ vc: FloatingPanelController, behaviorFor newCollection: UITraitCollection) -> FloatingPanelBehavior? {
        return nil
    }
    func floatingPanelDidChangePosition(_ vc: FloatingPanelController) {}
    func floatingPanelDidMove(_ vc: FloatingPanelController) {}
    func floatingPanelWillBeginDragging(_ vc: FloatingPanelController) {}
    func floatingPanelDidEndDragging(_ vc: FloatingPanelController, withVelocity velocity: CGPoint, targetPosition: FloatingPanelPosition) {}
    func floatingPanelWillBeginDecelerating(_ vc: FloatingPanelController) {}
    func floatingPanelDidEndDecelerating(_ vc: FloatingPanelController) {}

    func floatingPanelDidEndDraggingToRemove(_ vc: FloatingPanelController, withVelocity velocity: CGPoint) {}
    func floatingPanelDidEndRemove(_ vc: FloatingPanelController) {}

    func floatingPanel(_ vc: FloatingPanelController, shouldRecognizeSimultaneouslyWith gestureRecognizer: UIGestureRecognizer) -> Bool { return false }
}
#endif
