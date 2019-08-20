import UIKit

protocol HasViewControllerLayout {
    var viewControllerLayout: ViewControllerLayout { get }
}

protocol ViewControllerLayout {
    func layout(in view: UIView, component3: UIView)
}

final class ViewController: UIViewController {

    typealias LayoutDependencies = HasViewControllerLayout & HasComponent1ViewLayout & HasComponent2ViewLayout & HasComponent3ViewLayout
    
    private let component3: Component3View
    private let layoutDependencies: LayoutDependencies
    
    init(layoutDependencies: LayoutDependencies) {
        self.layoutDependencies = layoutDependencies
        self.component3 = Component3View(layoutDependencies: layoutDependencies)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    private func setupView() {
        component3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(component3)
        
        layoutDependencies.viewControllerLayout.layout(in: view, component3: component3)
    }

}
