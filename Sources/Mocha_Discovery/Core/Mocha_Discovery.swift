import UIKit
import URLNavigator
import ModuleCenter

public struct Mocha_Discovery {
    private init() {}
}

extension Mocha_Discovery: Module {
    
    public static var shared: Mocha_Discovery {
        return Mocha_Discovery()
    }
    
    public static func initialize(navigator: NavigatorType) {
        navigator.register(pattern) { (url, params, context) -> UIViewController? in
            return DiscoveryViewController()
        }
    }
}
