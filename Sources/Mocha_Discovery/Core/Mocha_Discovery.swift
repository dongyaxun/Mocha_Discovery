import UIKit
import URLNavigator
import ModuleCenter

public struct Module_Discovery {
    private init() {}
}

extension Module_Discovery: Module {
    
    public static var shared: Module_Discovery {
        return Module_Discovery()
    }
    
    public static func initialize(navigator: NavigatorType) {
        navigator.register(pattern) { (url, params, context) -> UIViewController? in
            return DiscoveryViewController()
        }
    }
}
