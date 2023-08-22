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
        view.layer.backgroundColor = UIColor.systemPurple.cgColor
        return view
    }()
    
    private let profImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.circle.fill")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let  firstName: UILabel = {
        let label = UILabel()
        label.text = "Carrington"
        label.textColor = UIColor.green
        label.numberOfLines = 1
        label.font = UIFont(name: "avenir", size: 30)
        return label
    }()
    
    private let lastName: UILabel = {
        let label = UILabel()
        label.text = "Manyuchi"
        label.textColor = UIColor.blue
        label.font = UIFont(name: "Helvetica", size: 16)
        label.numberOfLines = 1
        return label
        
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUI() {
        contentView.addSubview(backView)
        contentView.addSubview(profImage)
        contentView.addSubview(firstName)
        contentView.addSubview(lastName)
    }
    
    
    func composeConstraints() {
        
    }
}
