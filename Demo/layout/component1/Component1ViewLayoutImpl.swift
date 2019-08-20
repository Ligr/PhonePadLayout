import UIKit

struct Component1ViewLayoutImplPhone: Component1ViewLayout {
    func layout(in view: UIView, button: UIView) {
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16)
            ])
    }
}

struct Component1ViewLayoutImplPad: Component1ViewLayout {
    func layout(in view: UIView, button: UIView) {
        NSLayoutConstraint.activate([
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16)
            ])
    }
}
