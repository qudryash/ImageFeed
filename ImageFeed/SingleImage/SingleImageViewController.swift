//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Kudryashov Andrey on 27.01.2024.
//

import UIKit

final class SingleImageViewController: UIViewController {
    var image: UIImage! {
        didSet {
            guard isViewLoaded else { return}
            imageView.image = image
        }
    }
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
    @IBAction func didTapBackButton() {
        dismiss(animated: true, completion: nil)
    }
}
