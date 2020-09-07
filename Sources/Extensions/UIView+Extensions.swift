import UIKit

extension UIView {
  /// A helper function to add multiple subviews.
  func addSubviews(_ subviews: UIView...) {
    subviews.forEach {
      addSubview($0)
    }
  }
}

extension UIDevice {
    var hasNotch: Bool {
			if #available(iOS 11.0, *) {
				let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
				return bottom > 0
			} else {
				return false
			}
    }
}
