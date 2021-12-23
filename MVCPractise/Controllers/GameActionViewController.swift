//
//  GameActionViewController.swift
//  MVCPractise
//
//  Created by Наталья Шарапова on 18.12.2021.
//

import UIKit

class GameActionViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var descriptionLabel: UITextView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var favButton: UIButton!
    
    //MARK: - Properties
    
    var game: Action!
    
    //MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Properties of the favButton
        favButton.backgroundColor = .brown
        favButton.alpha = 0.7
        favButton.layer.cornerRadius = 20
        favButton.tintColor = .white
        favButton.titleLabel?.font = UIFont(name: "Gill Sans", size: 20)
        favButton.layer.borderWidth = 1
        favButton.setTitle("Add to favorites ⭐️", for: .normal)
        favButton.layer.borderColor = UIColor.white.cgColor
        
        updateUI()
    }
    
    func updateUI() {
        
        nameLabel.text = game.name
        imageLabel.image = game.image
        descriptionLabel.text = game.description
        ratingLabel.text = "\(game.stars)"
        priceLabel.text = "Price: \(game.price), rub"
    }
    
    //MARK: - Actions
    
    @IBAction func favButtonPressed(_ sender: UIButton) {
        
        //Adding the selected game to the array
        
        arrayFav.append(game.name)
        
        //favButton animation
        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        UIButton.animate(withDuration: 2, delay: 0, usingSpringWithDamping: CGFloat(0.20),
                         initialSpringVelocity: CGFloat(6.0),
                         options: UIButton.AnimationOptions.allowUserInteraction,
                         animations: {
                            sender.transform = CGAffineTransform.identity
                            sender.backgroundColor = .green
                         })
    }
}
