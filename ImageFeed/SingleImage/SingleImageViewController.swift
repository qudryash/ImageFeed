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
            rescaleAndCenterImageInScrollView(image: image)
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet private var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 1.25
        imageView.image = image
        rescaleAndCenterImageInScrollView(image: image)
    }
    
    @IBAction private func didTapBackButton() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapShareButton(_ sender: Any) {
        let share = UIActivityViewController(
            activityItems: [image!],
            applicationActivities: nil
        )
        
        present(share, animated: true, completion: nil)
    }
    
    private func rescaleAndCenterImageInScrollView(image: UIImage) {
        let minZoomScale = scrollView.minimumZoomScale
        let maxZoomScale = scrollView.maximumZoomScale
        updateContentInsetForScrollView(scrollView)
        view.layoutIfNeeded()
        let visibleRectSize = scrollView.bounds.size
        let imageSize = image.size
        let hScale = visibleRectSize.width / imageSize.width
        let vScale = visibleRectSize.height / imageSize.height
        let scale = min(maxZoomScale, max(minZoomScale, max(hScale, vScale)))
        scrollView.setZoomScale(scale, animated: false)
        scrollView.layoutIfNeeded()
        let newContentSize = scrollView.contentSize
        let horizontalInset = max(0, (scrollView.bounds.width - newContentSize.width) / 2)
        let verticalInset = max(0, (scrollView.bounds.height - newContentSize.height) / 2)
        scrollView.contentInset = UIEdgeInsets(top: verticalInset, left: horizontalInset, bottom: verticalInset, right: horizontalInset)
    }
    
}

extension SingleImageViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        updateContentInsetForScrollView(scrollView)
    }
    
    private func updateContentInsetForScrollView(_ scrollView: UIScrollView) {
        let boundsSize = scrollView.bounds.size
        var contentInset = UIEdgeInsets.zero
        
        if let image = imageView.image {
            let contentSize = scrollView.contentSize
            contentInset.top = max(0, (boundsSize.height - contentSize.height) / 2)
            contentInset.left = max(0, (boundsSize.width - contentSize.width) / 2)
            contentInset.bottom = contentInset.top
            contentInset.right = contentInset.left
        }
        
        scrollView.contentInset = contentInset
    }
}
