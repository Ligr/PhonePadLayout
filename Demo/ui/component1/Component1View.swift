import UIKit

protocol HasComponent1ViewLayout {
    var component1ViewLayout: Component1ViewLayout { get }
}

protocol Component1ViewLayout {
    func layout(in view: UIView, button: UIView)
}

final class Component1View: UIView {
    
    typealias LayoutDependencies = HasComponent1ViewLayout
    
    private let button = UIButton(type: .system)
    private let layoutDependencies: LayoutDependencies
    
    init(layoutDependencies: LayoutDependencies) {
        self.layoutDependencies = layoutDependencies
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Component 1", for: .normal)
        addSubview(button)
        
        layoutDependencies.component1ViewLayout.layout(in: self, button: button)
    }
    
}
