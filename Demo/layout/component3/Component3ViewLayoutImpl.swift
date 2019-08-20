import UIKit

struct Component3ViewLayoutImplPhone: Component3ViewLayout {
    func layout(in view: UIView, component1: UIView, component2: UIView) {
        NSLayoutConstraint.activate([
            component1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            component1.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            component1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            component1.heightAnchor.constraint(equalToConstant: 60),
            
            component2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            component2.topAnchor.constraint(equalTo: component1.bottomAnchor, constant: 16),
            component2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            component2.heightAnchor.constraint(equalToConstant: 60)
            ])
    }
}

struct Component3ViewLayoutImplPad: Component3ViewLayout {
    func layout(in view: UIView, component1: UIView, component2: UIView) {
        NSLayoutConstraint.activate([
            component1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            component1.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            component1.widthAnchor.constraint(equalToConstant: 200),
            component1.heightAnchor.constraint(equalToConstant: 60),
            
            component2.leadingAnchor.constraint(equalTo: component1.trailingAnchor, constant: 16),
            component2.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            component2.widthAnchor.constraint(equalToConstant: 200),
            component2.heightAnchor.constraint(equalToConstant: 60)
            ])
    }
}
