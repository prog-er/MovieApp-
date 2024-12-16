//
//  TableViewCell.swift
//  MovieApp3
//
//  Created by Olzhas Karibayev on 19.11.2024.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {
  
    static let identifier = "TableViewCell"
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
//        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
        contentView.addSubview(posterImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        guard let url = URL(string: model) else {return}
        posterImageView.sd_setImage(with: url, completed: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


