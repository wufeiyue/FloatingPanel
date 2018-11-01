//
//  Created by Shin Yamamoto on 2018/09/18.
//  Copyright © 2018 Shin Yamamoto. All rights reserved.
//

import XCTest
@testable import FloatingPanel

class FloatingPanelTests: XCTestCase {

    override func setUp() {}

    override func tearDown() {}

    func testGetAnimator() {
        guard let rootVC = UIApplication.shared.keyWindow?.rootViewController else { fatalError() }

        let fpc = FloatingPanelController()
        fpc.addPanel(toParent: rootVC)

        fpc.surfaceView.backgroundColor = .red

        waitRunLoop(secs: 1.0)

        fpc.surfaceView.superview?.layoutIfNeeded()
        fpc.backdropView.alpha = 1.0

        //fpc.floatingPanel.move(from: .tip, to: .half, animated: true)

        waitRunLoop(secs: 5.0)

        print(fpc.surfaceView.layer.presentation()?.frame)
        print(fpc.surfaceView.backgroundColor)

        print(fpc.surfaceView.layer.model().frame)
        print(fpc.surfaceView.frame)
    }
}

func waitRunLoop(secs: TimeInterval = 0) {
    RunLoop.main.run(until: Date(timeIntervalSinceNow: secs))
}
