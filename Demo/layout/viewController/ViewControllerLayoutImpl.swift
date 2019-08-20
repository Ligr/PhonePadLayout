import UIKit

struct ViewControllerLayoutImplPhone: ViewControllerLayout {
    func layout(in view: UIView, component3: UIView) {
        NSLayoutConstraint.activate([
            component3.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            component3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            component3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            component3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16)
            ])
    }
}

struct ViewControllerLayoutImplPad: ViewControllerLayout {
    func layout(in view: UIView, component3: UIView) {
        NSLayoutConstraint.activate([
            component3.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            component3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            component3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            component3.heightAnchor.constraint(equalToConstant: 300)
            ])
    }
}
