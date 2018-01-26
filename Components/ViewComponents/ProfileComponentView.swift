import UIKit

public class ProfileComponentView: UIView {

    // MARK: - Internal properties

    private let profileImage = UIImage(named: "profileCell")

    private lazy var profileCellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isAccessibilityElement = true
        imageView.accessibilityLabel = "Selger: Navn: Svend Hansen. Vurdering: 4stjerner. 16vurderinger."
        imageView.contentMode = .scaleAspectFit
        imageView.image = profileImage
        return imageView
    }()

    // MARK: - Setup

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        addSubview(profileCellImageView)

        NSLayoutConstraint.activate([
            profileCellImageView.topAnchor.constraint(equalTo: topAnchor),
            profileCellImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            profileCellImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileCellImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            profileCellImageView.heightAnchor.constraint(equalToConstant: 120),
        ])
    }
}