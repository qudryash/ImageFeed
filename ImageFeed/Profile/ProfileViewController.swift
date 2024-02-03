//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Kudryashov Andrey on 27.01.2024.
//

import UIKit

final class ProfileViewController: UIViewController {
    private let userPhotoImageView = UIImageView(image: UIImage(named: "Photo"))
    private let userNameLabel = UILabel()
    private let nickNameLabel = UILabel()
    private let aboutMeLabel = UILabel()
    private let logoutButton = UIButton()
    
    override func viewDidLoad() {
        setupUserPhotoImageView()
        setupUserNameLabel()
        setupNickNameLabel()
        setupAboutMeLabel()
        setupLogoutButton()
        setupConstraints()
    }
    
    private func setupUserPhotoImageView () {
        userPhotoImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userPhotoImageView)
    }
    
    private func setupUserNameLabel() {
        userNameLabel.text = "Екатерина Новикова"
        userNameLabel.textColor = .ypWhiteIOS
        userNameLabel.font = UIFont.boldSystemFont(ofSize: 23.0)
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNameLabel)
    }
    
    private func setupNickNameLabel() {
        nickNameLabel.text = "@ekaterina_nov"
        nickNameLabel.textColor = .ypGrayIOS
        nickNameLabel.font = UIFont.systemFont(ofSize: 13.0)
        nickNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nickNameLabel)
    }
    
    private func setupAboutMeLabel() {
        aboutMeLabel.text = "Hello, world!"
        aboutMeLabel.textColor = .ypWhiteIOS
        aboutMeLabel.font = UIFont.systemFont(ofSize: 13.0)
        aboutMeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aboutMeLabel)
    }
    
    private func setupLogoutButton() {
        logoutButton.setImage(UIImage(systemName: "ipad.and.arrow.forward")?.withConfiguration(UIImage.SymbolConfiguration(weight: .bold)),for: .normal)
        logoutButton.addTarget(self, action: #selector(Self.didTapLogoutButton), for: .touchUpInside)
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutButton)
        logoutButton.tintColor = .ypRedIOS
        logoutButton.contentEdgeInsets = UIEdgeInsets(top: 11, left: 16, bottom: 11, right: 8)

    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            userPhotoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            userPhotoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            userPhotoImageView.heightAnchor.constraint(equalToConstant: 70),
            userPhotoImageView.widthAnchor.constraint(equalToConstant: 70),
            userNameLabel.leadingAnchor.constraint(equalTo: userPhotoImageView.leadingAnchor),
            userNameLabel.topAnchor.constraint(equalTo: userPhotoImageView.bottomAnchor, constant: 8),
            userNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            nickNameLabel.leadingAnchor.constraint(equalTo: userNameLabel.leadingAnchor),
            nickNameLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 8),
            nickNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            aboutMeLabel.leadingAnchor.constraint(equalTo: nickNameLabel.leadingAnchor),
            aboutMeLabel.topAnchor.constraint(equalTo: nickNameLabel.bottomAnchor, constant: 8),
            aboutMeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logoutButton.centerYAnchor.constraint(equalTo: userPhotoImageView.centerYAnchor),
            logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logoutButton.heightAnchor.constraint(equalToConstant: 44),
            logoutButton.widthAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    @objc private func didTapLogoutButton() {
        dismiss(animated: true, completion: nil)
        print("Exit")
    }
    
}
