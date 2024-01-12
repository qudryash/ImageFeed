//
//  ViewController.swift
//  ImageFeed
//
//  Created by Kudryashov Andrey on 08.01.2024.
//

import UIKit

class ImagesListViewController: UIViewController {
    @IBOutlet private var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ImagesListViewController: UITableViewDelegate {
    func tableView(_tableView: UITableView, didSelectRowAt indexPath: IndexPath) { }
}
    

extension ImagesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentifier, for:  indexPath)
        
        guard let imageListCell = cell as? ImagesListCell else {
            return UITableViewCell()
        }
        
        configCell (for: imageListCell)
        return imageListCell
    }
    
    
}

extension ImagesListViewController {
    func configCell (for cell: ImagesListCell) {}
}
