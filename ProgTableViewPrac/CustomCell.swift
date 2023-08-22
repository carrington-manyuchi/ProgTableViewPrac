//
//  CustomCell.swift
//  ProgTableViewPrac
//
//  Created by DA MAC M1 157 on 2023/08/22.
//

import UIKit

class CustomCell: UITableViewCell {
    
    public static let identifier = "CustomCell"
    
    private let backView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.backgroundColor = UIColor.systemPurple.cgColor
        view.layer.borderColor = UIColor.systemYellow.cgColor
        view.layer.borderWidth = 2
        
        view.layer.cornerRadius = 18
        view.layer.shadowOffset = CGSize(width: -3, height: 7)
        view.layer.shadowOpacity = 0.6
        
        return view
    }()
    
    public let profImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "person.circle.fill")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    public let  firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints  = false
        label.text = "Carrington"
        label.textColor = UIColor.green
        label.numberOfLines = 1
        label.font = UIFont(name: "avenir", size: 30)
        return label
    }()
    
    private let lastName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Manyuchi"
        label.textColor = UIColor.blue
        label.font = UIFont(name: "avenir", size: 25)
        label.numberOfLines = 1
        return label
        
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupUI()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure( with image: UIImage) {
        profImage.image = image
    }
    
    
    func setupUI() {
        contentView.addSubview(backView)
        contentView.addSubview(profImage)
        contentView.addSubview(firstName)
        contentView.addSubview(lastName)
        composeConstraints()
    }
    
    
    func composeConstraints() {
        let composeBackViewConstraints = [
            backView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            backView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            backView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            backView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ]
        
        let composeProfImageConstraints = [
            profImage.topAnchor.constraint(equalTo: backView.topAnchor, constant: 10),
            profImage.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10),
            profImage.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: -10),
            profImage.widthAnchor.constraint(equalToConstant: 80),
            profImage.heightAnchor.constraint(equalToConstant: 80)
        ]
        
        let composeFirstNameConstraints = [
            firstName.topAnchor.constraint(equalTo: profImage.topAnchor),
            firstName.leadingAnchor.constraint(equalTo: profImage.trailingAnchor, constant: 8),
            firstName.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -10)
        ]
        
        let composeLastNameConstraints = [
            lastName.topAnchor.constraint(equalTo: firstName.bottomAnchor, constant: 10),
            lastName.leadingAnchor.constraint(equalTo: profImage.trailingAnchor, constant: 8),
            lastName.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -10),
            lastName.bottomAnchor.constraint(equalTo: profImage.bottomAnchor, constant: -1)
        ]
        
        NSLayoutConstraint.activate(composeBackViewConstraints)
        NSLayoutConstraint.activate(composeProfImageConstraints)
        NSLayoutConstraint.activate(composeFirstNameConstraints)
        NSLayoutConstraint.activate(composeLastNameConstraints)
    }
}
