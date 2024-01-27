//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Kudryashov Andrey on 27.01.2024.
//

import UIKit

final class ProfileViewController: UIViewController {
    @IBOutlet private var userPhotoImageView: UIImageView!
    @IBOutlet private var userNameLabel: UILabel!
    @IBOutlet private var nickNameLabel: UILabel!
    @IBOutlet private var aboutMeLabel: UILabel!
    @IBOutlet private var logoutButton: UIButton!
    
    @IBAction private func didTapLogoutButton() {
    }

}
