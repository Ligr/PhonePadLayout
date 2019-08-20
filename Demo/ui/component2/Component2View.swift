import UIKit

protocol HasComponent2ViewLayout {
    var component2ViewLayout: Component2ViewLayout { get }
}

protocol Component2ViewLayout {
    func layout(in view: UIView, button: UIView)
}

final class Component2View: UIView {
    
    typealias LayoutDependencies = HasComponent2ViewLayout
    
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
        backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Component 2", for: .normal)
        addSubview(button)
        
        layoutDependencies.component2ViewLayout.layout(in: self, button: button)
    }
    
}
