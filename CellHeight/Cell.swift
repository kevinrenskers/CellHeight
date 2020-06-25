import UIKit

class Cell: UICollectionViewCell {
  @IBOutlet private var detailsView: UIView!

  var collectionView: UICollectionView?

  override func awakeFromNib() {
    super.awakeFromNib()
    contentView.layer.cornerRadius = 10
  }

  @IBAction private func toggleDetails() {
    UIView.animate(withDuration: 2) {
      self.detailsView.isHidden.toggle()
      self.collectionView?.performBatchUpdates({}, completion: nil)
    }
  }
}
