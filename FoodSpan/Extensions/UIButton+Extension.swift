import UIKit

extension UIButton {
    func setTitle(
        title: String,
        titleColor: UIColor = .white,
        font: UIFont? = nil
    ) {
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        titleLabel?.font = font
    }
    
    func setLayer(
        borderWidth: CGFloat = 0,
        borderColor: UIColor = .black,
        cornerRadius: CGFloat = 3
    ) {
        layer.borderColor = borderColor.cgColor
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
    }
}

