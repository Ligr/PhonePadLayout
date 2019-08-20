import Foundation

struct LayoutsContainerPhone: HasComponent1ViewLayout, HasComponent2ViewLayout, HasComponent3ViewLayout, HasViewControllerLayout {
    
    static let shared = LayoutsContainerPhone()
    
    var component1ViewLayout: Component1ViewLayout {
        return Component1ViewLayoutImplPhone()
    }
    
    var component2ViewLayout: Component2ViewLayout {
        return Component2ViewLayoutImplPhone()
    }
    
    var component3ViewLayout: Component3ViewLayout {
        return Component3ViewLayoutImplPhone()
    }
    
    var viewControllerLayout: ViewControllerLayout {
        return ViewControllerLayoutImplPhone()
    }
    
}

struct LayoutsContainerPad: HasComponent1ViewLayout, HasComponent2ViewLayout, HasComponent3ViewLayout, HasViewControllerLayout {
    
    static let shared = LayoutsContainerPad()
    
    var component1ViewLayout: Component1ViewLayout {
        return Component1ViewLayoutImplPad()
    }
    
    var component2ViewLayout: Component2ViewLayout {
        return Component2ViewLayoutImplPad()
    }
    
    var component3ViewLayout: Component3ViewLayout {
        return Component3ViewLayoutImplPad()
    }
    
    var viewControllerLayout: ViewControllerLayout {
        return ViewControllerLayoutImplPad()
    }
    
}
