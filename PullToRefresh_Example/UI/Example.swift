//
// Copyright (c) 2018-2020 Shakuro (https://shakuro.com/)
// Sergey Laschuk
//

import UIKit

internal struct Example {

    internal let title: String
    private let viewControllerType: (UIViewController & ExampleViewControllerProtocol).Type

    internal init(title aTitle: String, viewControllerType aViewControllerType: (UIViewController & ExampleViewControllerProtocol).Type) {
        title = aTitle
        viewControllerType = aViewControllerType
    }

    internal func instantiateViewController() -> UIViewController {
        return viewControllerType.instantiate(example: self)
    }

}

internal extension Example {

    static func all() -> [Example] {
        return [
            Example(title: "PullToRefresh", viewControllerType: ExamplePullToRefreshViewController.self),
            Example(title: "PullToRefresh - ShakuroLogo", viewControllerType: ExamplePullToRefreshShakuroLogoViewController.self),
            Example(title: "PullToRefresh - StickyHeaders", viewControllerType: ExamplePullToRefreshStickyHeadersViewController.self)
        ]
    }

}
