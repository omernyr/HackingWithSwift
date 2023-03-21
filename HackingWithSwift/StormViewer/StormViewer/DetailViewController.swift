//
//  DetailViewController.swift
//  StormViewer
//
//  Created by macbook pro on 21.03.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    private var myLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 150, y: 200, width: 200, height: 200))
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .systemYellow
        label.font = UIFont(name: "Impact", size: 24.0)
        label.shadowColor = .systemPink
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        myLabel.text = selectedImage
        imageView.contentMode = .scaleAspectFill
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        view.addSubview(myLabel)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
