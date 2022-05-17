//
//  NASAViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 5/16/22.
//

import UIKit

class NASAViewController: UIViewController {
    
    let photoInfoController = PhotoInfoController()
    
    @IBOutlet weak var nasaImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var copyrightLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        nasaImage.image = UIImage(systemName: "photo.on.rectangle")
        descriptionLabel.text = ""
        copyrightLabel.text = ""
        
        Task {
            do {
                let photoInfo = try await
                photoInfoController.fetchPhotoInfo()
                updateUI(with: photoInfo)
            } catch {
                updateUI(with: error)
            }
        }
    }
    
    func updateUI(with photoInfo: PhotoInfo) {
        Task {
            do {
                let image = try await photoInfoController.fetchImage(from: photoInfo.url)
                titleLabel.text = photoInfo.title
                nasaImage.image = image
                descriptionLabel.text = photoInfo.description
                copyrightLabel.text = photoInfo.copyright
            } catch {
                updateUI(with: error)
            }
        }
    }
    
    func updateUI(with error: Error) {
        title = "Error Fetching Photo"
        nasaImage.image = UIImage(systemName: "exclamationmark.octagon")
        descriptionLabel.text = error.localizedDescription
        copyrightLabel.text = ""
    }
}
