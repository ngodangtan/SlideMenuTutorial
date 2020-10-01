//
//  MenuOptionCell.swift
//  SlideMenuTutorial
//
//  Created by Ngo Dang tan on 9/30/20.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    // MARK: - Properties
    
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
      
        return iv
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Sample text"
        return label
    }()
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .darkGray
        
        addSubview(iconImageView)
        iconImageView.centerY(inView: self, leftAnchor: leftAnchor,paddingLeft: 12)
        iconImageView.setDimensions(height: 24, width: 24)
        
        addSubview(descriptionLabel)
        descriptionLabel.centerY(inView: self, leftAnchor: iconImageView.rightAnchor,paddingLeft: 12)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Handle

}
