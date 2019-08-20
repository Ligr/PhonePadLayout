import UIKit

protocol HasComponent3ViewLayout {
    var component3ViewLayout: Component3ViewLayout { get }
}

protocol Component3ViewLayout {
    func layout(in view: UIView, component1: UIView, component2: UIView)
}

final class Component3View: UIView {
    
    typealias LayoutDependencies = HasComponent1ViewLayout & HasComponent2ViewLayout & HasComponent3ViewLayout
    
    private let component1: Component1View
    private let component2: Component2View
    private let layoutDependencies: LayoutDependencies
    
    init(layoutDependencies: LayoutDependencies) {
        self.layoutDependencies = layoutDependencies
        self.component1 = Component1View(layoutDependencies: layoutDependencies)
        self.component2 = Component2View(layoutDependencies: layoutDependencies)
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .gray
        component1.translatesAutoresizingMaskIntoConstraints = false
        component2.translatesAutoresizingMaskIntoConstraints = false
        addSubview(component1)
        addSubview(component2)
        
        layoutDependencies.component3ViewLayout.layout(in: self, component1: component1, component2: component2)
    }
    
}
