//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Kudryashov Andrey on 12.01.2024.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet private var cellImage: UIImageView!
    @IBOutlet private var likeButton: UIButton!
    @IBOutlet private var dateLabel: UILabel!
    
    func configure(isLiked: Bool, date: String, image: UIImage) {
        likeButton.setImage(isLiked ? UIImage(named: "No Active Like") : UIImage(named: "Active Like"), for: .normal)
        dateLabel.text = date
        cellImage.image = image
    }
    
}
