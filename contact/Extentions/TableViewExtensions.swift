import UIKit

extension UITableViewCell: NibLoadable {}

protocol NibLoadable {
    static var nib: UINib { get }
    static var identifier: String { get }
}

extension NibLoadable {
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: Bundle.main)
    }

    static var identifier: String {
        return String(describing: self)
    }
}

extension UITableView {

    func dequeue<T: UITableViewCell>(_: T.Type, for indexPath: IndexPath) -> T? {
        return dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T
    }
}
